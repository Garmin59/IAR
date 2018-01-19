/* file stm32f0xxAdd.h */
/* определения, не вошедшие в файл stm32f0xx.h */

#ifndef STM32F00_ADD_H
#define STM32F00_ADD_H

// Альтернативные функции портов ввода - вывода

#define	GPIO_AF_AF0		0x00			// альтернативная функция 0
#define	GPIO_AF_AF1		0x01			// альтернативная функция 1
#define	GPIO_AF_AF2		0x02			// альтернативная функция 2
#define	GPIO_AF_AF3		0x03			// альтернативная функция 3
#define	GPIO_AF_AF4		0x04			// альтернативная функция 4
#define	GPIO_AF_AF5		0x05			// альтернативная функция 5
#define	GPIO_AF_AF6		0x06			// альтернативная функция 6
#define	GPIO_AF_AF7		0x07			// альтернативная функция 7

//
// обозначения битов регистров контроллера сенсорных кнопок
//
// -------------------- регистр TSC_CR --------------------
#define TSC_CR_CTPH		28
#define TSC_CR_CTPL		24
#define TSC_CR_SSD		17
#define TSC_CR_SSE		16
#define TSC_CR_SSPSC	15
#define TSC_CR_PGPSC	12
#define TSC_CR_MCV		5
#define TSC_CR_IODEF	4
#define TSC_CR_SYNCPOL	3
#define TSC_CR_AM		2
#define TSC_CR_START	1
#define TSC_CR_TSCE		0

#define TSC_CR_MCV_255		0	// максимальное значение счётчика
#define TSC_CR_MCV_511		1
#define TSC_CR_MCV_1023		2
#define TSC_CR_MCV_2047		3
#define TSC_CR_MCV_4095		4
#define TSC_CR_MCV_8191		5
#define TSC_CR_MCV_16383	6


// -------------------- регистр TSC_IER --------------------
#define TSC_IER_MCEIE	((uint32_t)0x00000002)
#define TSC_IER_EOAIE	((uint32_t)0x00000001)

// -------------------- регистр TSC_ICR --------------------
#define TSC_ICR_MCEIC	((uint32_t)0x00000002)
#define TSC_ICR_EOAIC	((uint32_t)0x00000001)

// -------------------- регистр TSC_ISR --------------------
#define TSC_ISR_MCEF	((uint32_t)0x00000002)
#define TSC_ISR_EOAF	((uint32_t)0x00000001)

// -------------------- регистр TSC_IOHCR ------------------
#define TSC_IOHCR_G1_IO1	((uint32_t)0x00000001)
#define TSC_IOHCR_G1_IO2	((uint32_t)0x00000002)
#define TSC_IOHCR_G1_IO3	((uint32_t)0x00000004)
#define TSC_IOHCR_G1_IO4	((uint32_t)0x00000008)
#define TSC_IOHCR_G2_IO1	((uint32_t)0x00000010)
#define TSC_IOHCR_G2_IO2	((uint32_t)0x00000020)
#define TSC_IOHCR_G2_IO3	((uint32_t)0x00000040)
#define TSC_IOHCR_G2_IO4	((uint32_t)0x00000080)
#define TSC_IOHCR_G3_IO1	((uint32_t)0x00000100)
#define TSC_IOHCR_G3_IO2	((uint32_t)0x00000200)
#define TSC_IOHCR_G3_IO3	((uint32_t)0x00000400)
#define TSC_IOHCR_G3_IO4	((uint32_t)0x00000800)
#define TSC_IOHCR_G4_IO1	((uint32_t)0x00001000)
#define TSC_IOHCR_G4_IO2	((uint32_t)0x00002000)
#define TSC_IOHCR_G4_IO3	((uint32_t)0x00004000)
#define TSC_IOHCR_G4_IO4	((uint32_t)0x00008000)
#define TSC_IOHCR_G5_IO1	((uint32_t)0x00010000)
#define TSC_IOHCR_G5_IO2	((uint32_t)0x00020000)
#define TSC_IOHCR_G5_IO3	((uint32_t)0x00040000)
#define TSC_IOHCR_G5_IO4	((uint32_t)0x00080000)
#define TSC_IOHCR_G6_IO1	((uint32_t)0x00100000)
#define TSC_IOHCR_G6_IO2	((uint32_t)0x00200000)
#define TSC_IOHCR_G6_IO3	((uint32_t)0x00400000)
#define TSC_IOHCR_G6_IO4	((uint32_t)0x00800000)

// -------------------- регистр TSC_IOASCR ------------------
#define TSC_IOASCR_G1_IO1	((uint32_t)0x00000001)
#define TSC_IOASCR_G1_IO2	((uint32_t)0x00000002)
#define TSC_IOASCR_G1_IO3	((uint32_t)0x00000004)
#define TSC_IOASCR_G1_IO4	((uint32_t)0x00000008)
#define TSC_IOASCR_G2_IO1	((uint32_t)0x00000010)
#define TSC_IOASCR_G2_IO2	((uint32_t)0x00000020)
#define TSC_IOASCR_G2_IO3	((uint32_t)0x00000040)
#define TSC_IOASCR_G2_IO4	((uint32_t)0x00000080)
#define TSC_IOASCR_G3_IO1	((uint32_t)0x00000100)
#define TSC_IOASCR_G3_IO2	((uint32_t)0x00000200)
#define TSC_IOASCR_G3_IO3	((uint32_t)0x00000400)
#define TSC_IOASCR_G3_IO4	((uint32_t)0x00000800)
#define TSC_IOASCR_G4_IO1	((uint32_t)0x00001000)
#define TSC_IOASCR_G4_IO2	((uint32_t)0x00002000)
#define TSC_IOASCR_G4_IO3	((uint32_t)0x00004000)
#define TSC_IOASCR_G4_IO4	((uint32_t)0x00008000)
#define TSC_IOASCR_G5_IO1	((uint32_t)0x00010000)
#define TSC_IOASCR_G5_IO2	((uint32_t)0x00020000)
#define TSC_IOASCR_G5_IO3	((uint32_t)0x00040000)
#define TSC_IOASCR_G5_IO4	((uint32_t)0x00080000)
#define TSC_IOASCR_G6_IO1	((uint32_t)0x00100000)
#define TSC_IOASCR_G6_IO2	((uint32_t)0x00200000)
#define TSC_IOASCR_G6_IO3	((uint32_t)0x00400000)
#define TSC_IOASCR_G6_IO4	((uint32_t)0x00800000)

// -------------------- регистр TSC_IOSCR ------------------
#define TSC_IOSCR_G1_IO1	((uint32_t)0x00000001)
#define TSC_IOSCR_G1_IO2	((uint32_t)0x00000002)
#define TSC_IOSCR_G1_IO3	((uint32_t)0x00000004)
#define TSC_IOSCR_G1_IO4	((uint32_t)0x00000008)
#define TSC_IOSCR_G2_IO1	((uint32_t)0x00000010)
#define TSC_IOSCR_G2_IO2	((uint32_t)0x00000020)
#define TSC_IOSCR_G2_IO3	((uint32_t)0x00000040)
#define TSC_IOSCR_G2_IO4	((uint32_t)0x00000080)
#define TSC_IOSCR_G3_IO1	((uint32_t)0x00000100)
#define TSC_IOSCR_G3_IO2	((uint32_t)0x00000200)
#define TSC_IOSCR_G3_IO3	((uint32_t)0x00000400)
#define TSC_IOSCR_G3_IO4	((uint32_t)0x00000800)
#define TSC_IOSCR_G4_IO1	((uint32_t)0x00001000)
#define TSC_IOSCR_G4_IO2	((uint32_t)0x00002000)
#define TSC_IOSCR_G4_IO3	((uint32_t)0x00004000)
#define TSC_IOSCR_G4_IO4	((uint32_t)0x00008000)
#define TSC_IOSCR_G5_IO1	((uint32_t)0x00010000)
#define TSC_IOSCR_G5_IO2	((uint32_t)0x00020000)
#define TSC_IOSCR_G5_IO3	((uint32_t)0x00040000)
#define TSC_IOSCR_G5_IO4	((uint32_t)0x00080000)
#define TSC_IOSCR_G6_IO1	((uint32_t)0x00100000)
#define TSC_IOSCR_G6_IO2	((uint32_t)0x00200000)
#define TSC_IOSCR_G6_IO3	((uint32_t)0x00400000)
#define TSC_IOSCR_G6_IO4	((uint32_t)0x00800000)

// -------------------- регистр TSC_IOCCR ------------------
#define TSC_IOCCR_G1_IO1	((uint32_t)0x00000001)
#define TSC_IOCCR_G1_IO2	((uint32_t)0x00000002)
#define TSC_IOCCR_G1_IO3	((uint32_t)0x00000004)
#define TSC_IOCCR_G1_IO4	((uint32_t)0x00000008)
#define TSC_IOCCR_G2_IO1	((uint32_t)0x00000010)
#define TSC_IOCCR_G2_IO2	((uint32_t)0x00000020)
#define TSC_IOCCR_G2_IO3	((uint32_t)0x00000040)
#define TSC_IOCCR_G2_IO4	((uint32_t)0x00000080)
#define TSC_IOCCR_G3_IO1	((uint32_t)0x00000100)
#define TSC_IOCCR_G3_IO2	((uint32_t)0x00000200)
#define TSC_IOCCR_G3_IO3	((uint32_t)0x00000400)
#define TSC_IOCCR_G3_IO4	((uint32_t)0x00000800)
#define TSC_IOCCR_G4_IO1	((uint32_t)0x00001000)
#define TSC_IOCCR_G4_IO2	((uint32_t)0x00002000)
#define TSC_IOCCR_G4_IO3	((uint32_t)0x00004000)
#define TSC_IOCCR_G4_IO4	((uint32_t)0x00008000)
#define TSC_IOCCR_G5_IO1	((uint32_t)0x00010000)
#define TSC_IOCCR_G5_IO2	((uint32_t)0x00020000)
#define TSC_IOCCR_G5_IO3	((uint32_t)0x00040000)
#define TSC_IOCCR_G5_IO4	((uint32_t)0x00080000)
#define TSC_IOCCR_G6_IO1	((uint32_t)0x00100000)
#define TSC_IOCCR_G6_IO2	((uint32_t)0x00200000)
#define TSC_IOCCR_G6_IO3	((uint32_t)0x00400000)
#define TSC_IOCCR_G6_IO4	((uint32_t)0x00800000)

// -------------------- регистр TSC_IOGCSR ------------------
#define TSC_IOGCSR_G1E		((uint32_t)0x00000001)
#define TSC_IOGCSR_G2E		((uint32_t)0x00000002)
#define TSC_IOGCSR_G3E		((uint32_t)0x00000004)
#define TSC_IOGCSR_G4E		((uint32_t)0x00000008)
#define TSC_IOGCSR_G5E		((uint32_t)0x00000010)
#define TSC_IOGCSR_G6E		((uint32_t)0x00000020)
#define TSC_IOGCSR_G1S		((uint32_t)0x00010000)
#define TSC_IOGCSR_G2S		((uint32_t)0x00020000)
#define TSC_IOGCSR_G3S		((uint32_t)0x00040000)
#define TSC_IOGCSR_G4S		((uint32_t)0x00080000)
#define TSC_IOGCSR_G5S		((uint32_t)0x00100000)
#define TSC_IOGCSR_G6S		((uint32_t)0x00200000)

// -------------------- регистр TSC_IOG_CR ------------------
#define TSC_IOGCR_MASK		((uint32_t)0x00003FFF)

#endif 	// STM32F00_ADD_H




