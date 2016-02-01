#include <esp8266.h>

os_timer_t rtcTimer;
#define RTC_MAGIC 0x55aaaa55

typedef struct {
  uint32 magic;
  uint64 start_time;
  uint64 time;
} rtc_data_t;

static void rtcTimerCb(void *arg)
{
  rtc_data_t data;
  system_rtc_mem_read(64, &data, sizeof(data));
  if (data.magic != RTC_MAGIC) {
    os_printf("RTC memory invalid, setting RTC...\r\n");
    data.magic = RTC_MAGIC;
    data.time = 0;
    data.start_time = system_get_rtc_time();
    os_printf( "Start time: %d\r\n", data.start_time );
  }
  uint32 rtc_time, cal;

  /*uint32 rtc_time1 = system_get_rtc_time();
  uint32 system_time1 = system_get_time();
  uint32  cal1 = system_rtc_clock_cali_proc();
  os_delay_us(300);*/

  rtc_time = system_get_rtc_time();
  cal = system_rtc_clock_cali_proc();
  data.time += ( ((uint64) (rtc_time - data.start_time)) * ((uint64) ((cal * 1000) >> 12)) );
  //os_printf("RTC time: %11d us\r\n", data.time / 1000);
  os_printf(" RTC: %lld.%02lld S\r\n", (data.time / 10000000) / 100, (data.time / 10000000) % 100);
  system_rtc_mem_write(64, &data, sizeof(data));
}

void ICACHE_FLASH_ATTR initRTC ( void )
{
  rtc_data_t data;
  system_rtc_mem_read(64, &data, sizeof(data));
  data.magic = RTC_MAGIC;
  data.time = 0;
  data.start_time = system_get_rtc_time();
  system_rtc_mem_write(64, &data, sizeof(data));
  os_memset(&rtcTimer,0,sizeof(os_timer_t));
  os_timer_disarm(&rtcTimer);
  os_timer_setfn(&rtcTimer, (os_timer_func_t *)rtcTimerCb, NULL);
  os_timer_arm(&rtcTimer, 100, 1);
}

//ntp_get_time();

//if (settings_get_pointer()->enable_ntp) {
//ntpTimerCb(NULL); //Initial NTP request

