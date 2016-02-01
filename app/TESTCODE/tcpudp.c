/*

//#include <lwip/udp.h>
//#include <lwip/tcp.h>

int ICACHE_FLASH_ATTR send_udp( uint8_t* server, int port, char* data, uint16 length )
{ //sends udp packets
  int result = -9999;
  struct espconn *conn = (struct espconn *) os_zalloc(sizeof(struct espconn));
  if (conn!=NULL) {
    conn->type = ESPCONN_UDP;
    conn->state = ESPCONN_NONE;
    conn->proto.udp = (esp_udp*)os_zalloc(sizeof(esp_udp));
    conn->proto.udp->local_port = espconn_port();
    conn->proto.udp->remote_port = port;
    os_memcpy(conn->proto.udp->remote_ip, server, 4);

    result = espconn_create(conn);
    if (result==0) {
      result = espconn_sendto(conn, (uint8*) data, length);
	  }
	}
	if (conn) {
	  espconn_delete(conn);
          os_free(conn->proto.udp);
          os_free(conn);
          conn = 0;
	}
  return result; //Success
}*/

/*

int ICACHE_FLASH_ATTR send_udp( uint8_t* server, int port, char* data, uint16 length )
{ 
  int result = -9999;

  uint16_t local_port = 10;
  uint16_t remote_port = port;//1337; //Hardcoded for test

  struct ip_addr pc_ipaddr;
  //IP4_ADDR(&pc_ipaddr,  192, 168,   0, 117); //Hardcoded for test
  IP4_ADDR(&pc_ipaddr,  server[0], server[1], server[2], server[3]);

  struct udp_pcb *pcb = udp_new();
  if(!pcb){ os_printf("Error creating PCB. Out of Memory\r\n"); return; }

  err_t err;

  os_printf("udp_bind...\r\n");
  err = udp_bind(pcb, IP_ADDR_ANY, local_port);
  if(err != ERR_OK){ os_printf("Unable to bind to port\r\n"); return; }
  os_printf("udp_connect...\r\n");
  //err = udp_connect(pcb, pc_ipaddr, remote_port);  
  //if(err != ERR_OK){ os_printf("Unable to connect\r\n"); return; }        

  os_printf("p...\r\n");
  //unsigned char msg[256] = "HELLO WORLD USING LWIP!";
  struct pbuf *p;
  //p = pbuf_alloc(PBUF_TRANSPORT,sizeof(msg),PBUF_RAM); 
  p = pbuf_alloc(PBUF_TRANSPORT,length,PBUF_RAM); 
  if (p == NULL) { os_printf("Could not allocate packet buffer.\r\n"); return;}

  //os_memcpy(p->payload, msg, sizeof(msg));
  os_memcpy(p->payload, data, length);

  os_printf("udp_send...\r\n");
  err = udp_sendto(pcb, p, &pc_ipaddr, remote_port); //udp_send(pcb,p->payload);
  if (err == ERR_MEM) {
    os_printf("Error sending packet. Out of memory\r\n");
  } else if (err == ERR_RTE) {
    os_printf("Could not find route to destinations address\r\n");
  } else if (err != ERR_OK) {
    os_printf("Error sending packet - %d\n\r", err);
  } else {
    os_printf("Packet sent\n\r");
  }

  os_printf("free...\r\n");
  pbuf_free(p); //Free data
  udp_remove(pcb); //Free lwIP udp connection

  return result;
}

void ICACHE_FLASH_ATTR udpServerTestHandleRecv(void *arg, struct udp_pcb *pcb, struct pbuf *p,  ip_addr_t *addr, u16_t port) {
    int length = p->len;
    char * pusrdata = p->payload;
    os_printf("Received udp data: '%s'\r\n", pusrdata);
    pbuf_free(p);
}

void ICACHE_FLASH_ATTR initUdpServerTest() {
  struct udp_pcb * pcb = udp_new();
  if(!pcb){ os_printf("Error creating PCB. Out of Memory\r\n"); return; }

  struct ip_addr ipSend;
  IP4_ADDR(&ipSend, 255, 255, 255, 255);
  pcb->multicast_ip = ipSend;
  pcb->remote_ip = ipSend;
  pcb->remote_port = 8080;

  err_t err;
  err = udp_bind(pcb, IP_ADDR_ANY, 8080);
  if(err != ERR_OK){ os_printf("UDP Server: Unable to bind to port\r\n"); return; }

  udp_recv(pcb, udpServerTestHandleRecv, pcb);
} */

/* Simple HTTP client (Not working yet) */

/*
err_t httpClientRecvCallback(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err)
{
  os_printf("Data recieved.\n");
  if (p == NULL) {
    os_printf("The remote host closed the connection.\n");
    os_printf("Now I'm closing the connection.\n");
    tcp_close(tpcb);
    return ERR_ABRT;
  } else {
    os_printf("Number of pbufs %d\n", pbuf_clen(p));
    os_printf("Contents of pbuf {{{%s}}}\n", (char *)p->payload);
  }
  return 0;
}

uint32_t httpClientSendRequest(struct tcp_pcb *tpcb)
{
  char *string = "HEAD /ota.php?device=2&version=2&info HTTP/1.0\r\nHost: rnpl.us\r\n\r\n ";
  uint32_t len = strlen(string);

  err_t err;

  err = tcp_write(tpcb, string, strlen(string), TCP_WRITE_FLAG_COPY);
  if (err) { os_printf("ERROR: Code: %d (tcp_send_packet :: tcp_write)\n", err); return 1; }

  err = tcp_output(tpcb);
  if (err) { os_printf("ERROR: Code: %d (tcp_send_packet :: tcp_output)\n", err); return 1; }
  return 0;
}

err_t httpClientConnectCallback(void *arg, struct tcp_pcb *tpcb, err_t err)
{
    os_printf("Connected!\r\n");
    httpClientSendRequest(tpcb);
    return 0;
}

void ICACHE_FLASH_ATTR httpClientConnect(void)
{
  struct tcp_pcb *pcb = tcp_new();

  struct ip_addr ip;
  IP4_ADDR(&ip, 82, 74, 20, 188);
  uint16_t port = 80;

  tcp_arg(pcb, NULL);

  //tcp_err(pcb, tcpErrorHandler);
  tcp_recv(pcb, httpClientRecvCallback);
  //tcp_sent(pcb, tcpSendCallback);

  tcp_connect(pcb, &ip, 80, httpClientConnectCallback);
}
*/
