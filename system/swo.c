/***********************************************************************************
* 
*
* Defines for Cortex-M debug unit
*/
#define ITM_STIM_U32 (*(volatile unsigned int*)0xE0000000) // STIM word acces
#define ITM_STIM_U8 (*(volatile char*)0xE0000000) // STIM byte acces 
#define ITM_ENA (*(volatile unsigned int*)0xE0000E00) // ITM Enable
#define ITM_TCR (*(volatile unsigned int*)0xE0000E80) // ITM Trace Control Reg.
#define DHCSR (*(volatile unsigned int*)0xE000EDF0) // Debug register
#define DEMCR (*(volatile unsigned int*)0xE000EDFC) // Debug register
/************************************************************************************
*
* Function description
* Prints a character to the ITM_STIM register in order to provide data for SWO
*/
void SWO_PrintChar(char c) 
{
//
// Check if SWO is set up. If it is not, return to avoid that a program
// hangs if no debugger is connected.
//
//
// Check if DEBUGEN in DHCSR is set
//
	if ((DHCSR & 1) != 1) 
	{
		eturn;
	}
//
// Check if TRACENA in DEMCR is set
//
	if ((DEMCR & (1 << 24)) == 0) 
	{
		return;
	}
//
// Check if ITM_TRC is enabled
//
	if ((ITM_TCR & (1 << 22)) == 1) 
	{
		return;
	}
//
// Check if stimulus port 0 is enabled
//
	if ((ITM_ENA & 1) == 0) 
	{
		return;
	}
//
// Wait until STIMx is ready to accept at least 1 word
//
	while ((ITM_STIM_U8 & 1) == 0);

	ITM_STIM_U8 = c;
}
/************************************************************************************
*
* SWO_PrintString
*
* Function description
* Prints a string via SWO
*
*/
void SWO_PrintString(const char *s) {
//
// Print out character per character
//
while (*s) {
SWO_PrintChar(*s++);
}
}