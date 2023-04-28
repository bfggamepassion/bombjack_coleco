/********************************************/
/*                                          */
/*   GRAPHICS TABLES  -  WIN ICVGM v3.00    */
/*                                          */
/*        WARNING : RLE COMPRESSION         */
/*                                          */
/********************************************/

#include <coleco.h>

byte NAMERLE[] = {
  0x81, 0x00, 0x00, 0xF8, 0x99, 0xFE, 0x00, 0xF9, 0x83, 0x00, 0x01, 0xF8, 0x01, 0x97, 0x02,
  0x01, 0x03, 0xF9, 0x83, 0x00, 0x01, 0xF8, 0x01, 0x97, 0x02, 0x01, 0x03, 0xF9, 0x83, 0x00, 0x01,
  0xF8, 0x01, 0x97, 0x02, 0x01, 0x03, 0xF9, 0x83, 0x00, 0x01, 0xF8, 0x01, 0x97, 0x02, 0x01, 0x03,
  0xF9, 0x83, 0x00, 0x01, 0xF8, 0x01, 0x82, 0x02, 0x05, 0x04, 0x05, 0x06, 0x07, 0x06, 0x08, 0x8E,
  0x02, 0x01, 0x03, 0xF9, 0x83, 0x00, 0x0A, 0xF8, 0x01, 0x02, 0x02, 0x09, 0x0A, 0x0B, 0x0C, 0x0D,
  0x0C, 0x0E, 0x8E, 0x02, 0x01, 0x03, 0xF9, 0x83, 0x00, 0x0A, 0xF8, 0x01, 0x02, 0x02, 0x0F, 0x0A,
  0x0B, 0x0C, 0x0D, 0x0C, 0x0E, 0x8D, 0x02, 0x02, 0x10, 0x11, 0xF9, 0x83, 0x00, 0x0A, 0xF8, 0x01,
  0x02, 0x02, 0x0F, 0x0A, 0x0B, 0x0C, 0x0D, 0x0C, 0x0E, 0x8C, 0x02, 0x03, 0x12, 0x13, 0x14, 0xF9,
  0x83, 0x00, 0x0A, 0xF8, 0x01, 0x02, 0x02, 0x0F, 0x0A, 0x0B, 0x0C, 0x0D, 0x0C, 0x0E, 0x88, 0x02,
  0x07, 0x15, 0x16, 0x17, 0x02, 0x18, 0x19, 0x14, 0xF9, 0x83, 0x00, 0x0A, 0xF8, 0x01, 0x02, 0x02,
  0x0F, 0x0A, 0x0B, 0x0C, 0x0D, 0x0C, 0x0E, 0x88, 0x02, 0x07, 0x1A, 0x1B, 0x1C, 0x02, 0x18, 0x19,
  0x14, 0xF9, 0x83, 0x00, 0x0A, 0xF8, 0x01, 0x02, 0x02, 0x0F, 0x0A, 0x0B, 0x0C, 0x0D, 0x0C, 0x0E,
  0x88, 0x02, 0x07, 0x1A, 0x1B, 0x1C, 0x02, 0x18, 0x19, 0x14, 0xF9, 0x83, 0x00, 0x0A, 0xF8, 0x01,
  0x02, 0x02, 0x0F, 0x0A, 0x0B, 0x0C, 0x0D, 0x0C, 0x0E, 0x88, 0x02, 0x07, 0x1A, 0x1B, 0x1C, 0x02,
  0x18, 0x19, 0x14, 0xF9, 0x83, 0x00, 0x0A, 0xF8, 0x01, 0x02, 0x02, 0x0F, 0x0A, 0x0B, 0x0C, 0x0D,
  0x0C, 0x0E, 0x84, 0x02, 0x0B, 0x1D, 0x1E, 0x02, 0x02, 0x1A, 0x1B, 0x1C, 0x02, 0x18, 0x19, 0x14,
  0xF9, 0x83, 0x00, 0x0A, 0xF8, 0x01, 0x02, 0x02, 0x0F, 0x0A, 0x0B, 0x0C, 0x0D, 0x0C, 0x0E, 0x84,
  0x02, 0x0B, 0x1F, 0x20, 0x02, 0x02, 0x1A, 0x1B, 0x1C, 0x02, 0x18, 0x19, 0x14, 0xF9, 0x83, 0x00,
  0x1B, 0xF8, 0x21, 0x22, 0x22, 0x23, 0x24, 0x0B, 0x0C, 0x0D, 0x0C, 0x25, 0x26, 0x27, 0x28, 0x29,
  0x2A, 0x1F, 0x2B, 0x2C, 0x2D, 0x2E, 0x2F, 0x30, 0x2D, 0x31, 0x32, 0x14, 0xF9, 0x83, 0x00, 0x01,
  0xF8, 0x33, 0x82, 0x34, 0x0D, 0x0A, 0x0B, 0x0C, 0x0D, 0x0C, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3A,
  0x1F, 0x3B, 0x3C, 0x85, 0x3D, 0x02, 0x3E, 0x14, 0xF9, 0x83, 0x00, 0x01, 0xF8, 0x33, 0x82, 0x34,
  0x05, 0x0A, 0x0B, 0x0C, 0x0D, 0x0C, 0x3F, 0x82, 0x40, 0x04, 0x41, 0x42, 0x43, 0x44, 0x3C, 0x85,
  0x3D, 0x02, 0x3E, 0x14, 0xF9, 0x83, 0x00, 0x01, 0xF8, 0x45, 0x82, 0x46, 0x0D, 0x0A, 0x0B, 0x0C,
  0x0D, 0x0C, 0x3F, 0x47, 0x47, 0x48, 0x49, 0x4A, 0x4A, 0x4B, 0x3C, 0x85, 0x3D, 0x02, 0x3E, 0x14,
  0xF9, 0x83, 0x00, 0x01, 0xF8, 0x4C, 0x82, 0x4D, 0x0D, 0x4E, 0x4F, 0x50, 0x51, 0x50, 0x52, 0x53,
  0x53, 0x54, 0x55, 0x56, 0x56, 0x57, 0x58, 0x85, 0x59, 0x02, 0x5A, 0x5B, 0xF9, 0x83, 0x00, 0x01,
  0xF8, 0x5C, 0x97, 0x5D, 0x01, 0x5E, 0xF9, 0x83, 0x00, 0x01, 0xF8, 0x5C, 0x97, 0x5D, 0x01, 0x5E,
  0xF9, 0x83, 0x00, 0x01, 0xF8, 0x5C, 0x97, 0x5D, 0x01, 0x5E, 0xF9, 0x83, 0x00, 0x00, 0xF8, 0x99,
  0xFE, 0x00, 0xF9, 0x81, 0x00, 0xFF};

byte PATTERNRLE[] = {
  0x87, 0x00, 0x87, 0xFF, 0x91, 0x00, 0x0D, 0x01, 0x03, 0x06, 0x1F, 0x3F, 0x04, 0x00, 0x40,
  0x40, 0x36, 0x36, 0x40, 0x40, 0x36, 0x82, 0x00, 0x81, 0x24, 0x81, 0x00, 0x01, 0x24, 0x00, 0x86,
  0x3F, 0x00, 0x00, 0x86, 0x7F, 0x1F, 0x00, 0x01, 0x03, 0x07, 0x1E, 0x3F, 0x7F, 0x04, 0x11, 0x11,
  0x44, 0x44, 0x11, 0x11, 0x44, 0x44, 0x36, 0x40, 0x40, 0x36, 0x36, 0x40, 0x40, 0x36, 0x24, 0x00,
  0x00, 0x24, 0x24, 0x00, 0x00, 0x24, 0x87, 0x3F, 0x87, 0x7F, 0x81, 0x11, 0x81, 0x40, 0x81, 0x11,
  0x81, 0x40, 0x81, 0x00, 0x05, 0x01, 0x03, 0x07, 0x0D, 0x1D, 0x37, 0x82, 0x00, 0x81, 0x1B, 0x81,
  0x00, 0x20, 0x1B, 0x00, 0x00, 0x01, 0x03, 0x07, 0x0D, 0x1D, 0x08, 0x08, 0x22, 0x22, 0x77, 0x77,
  0x22, 0x22, 0x77, 0x1B, 0x00, 0x00, 0x1B, 0x1B, 0x00, 0x00, 0x1B, 0x00, 0x01, 0x06, 0x07, 0x19,
  0x27, 0x19, 0x27, 0x88, 0x00, 0x86, 0x7F, 0x17, 0x08, 0x22, 0x22, 0x08, 0x08, 0x22, 0x22, 0x08,
  0x77, 0x22, 0x22, 0x77, 0x77, 0x22, 0x22, 0x77, 0x19, 0x27, 0x19, 0x27, 0x19, 0x27, 0x19, 0x27,
  0x87, 0x00, 0x87, 0x7F, 0x00, 0x00, 0x86, 0x07, 0x00, 0x00, 0x96, 0x07, 0x81, 0xFF, 0x20, 0xAA,
  0xFF, 0xFF, 0x88, 0x88, 0xFF, 0x00, 0x00, 0x55, 0x00, 0x00, 0x77, 0x77, 0x00, 0x11, 0x00, 0x15,
  0x00, 0x00, 0x77, 0x77, 0x08, 0x11, 0x7F, 0x7F, 0x44, 0x11, 0x11, 0x44, 0x44, 0x7F, 0x7F, 0x78,
  0x83, 0x7C, 0x00, 0x78, 0x89, 0x00, 0x05, 0x01, 0x03, 0x03, 0x02, 0x02, 0x01, 0x84, 0x00, 0x82,
  0x01, 0x00, 0x00, 0x83, 0x03, 0x03, 0x00, 0x03, 0x00, 0x00, 0x86, 0x01, 0x03, 0x07, 0x00, 0x07,
  0x1F, 0x83, 0x7F, 0x07, 0x00, 0x7F, 0x7F, 0x3B, 0x33, 0x7F, 0x7F, 0x3B, 0x82, 0x00, 0x0C, 0x44,
  0x33, 0x00, 0x00, 0x44, 0x19, 0x00, 0x00, 0x44, 0x33, 0x00, 0x00, 0x44, 0x82, 0x00, 0x2F, 0x44,
  0x33, 0x00, 0x00, 0x44, 0x7F, 0x00, 0x00, 0x44, 0x33, 0x00, 0x00, 0x44, 0x08, 0x00, 0x00, 0x44,
  0x33, 0x00, 0x00, 0x44, 0x77, 0x02, 0x02, 0x47, 0x30, 0x02, 0x02, 0x47, 0xFF, 0x88, 0x88, 0xFF,
  0xFF, 0x88, 0x88, 0xFF, 0x00, 0x77, 0x77, 0x00, 0x00, 0x77, 0x77, 0x00, 0x7F, 0x70, 0x70, 0x82,
  0x07, 0x04, 0x70, 0x07, 0x7F, 0x00, 0x00, 0x82, 0x77, 0x04, 0x00, 0x77, 0x11, 0x00, 0x00, 0x82,
  0x77, 0x04, 0x00, 0x77, 0x01, 0x00, 0x00, 0x82, 0x77, 0x09, 0x00, 0x77, 0x03, 0x7F, 0x7C, 0x7F,
  0x7C, 0x7F, 0x7C, 0x7F, 0x83, 0x01, 0x83, 0x00, 0x87, 0x7F, 0x1A, 0x33, 0x7F, 0x7F, 0x3B, 0x33,
  0x7F, 0x7F, 0x3B, 0x33, 0x00, 0x00, 0x44, 0x33, 0x00, 0x00, 0x44, 0x30, 0x02, 0x02, 0x47, 0x30,
  0x02, 0x02, 0x47, 0x07, 0x07, 0x70, 0x82, 0x07, 0x04, 0x70, 0x07, 0x77, 0x77, 0x00, 0x82, 0x77,
  0x09, 0x00, 0x77, 0x7C, 0x1F, 0x0F, 0x0F, 0x1F, 0x0F, 0x0F, 0x1F, 0x87, 0x00, 0x00, 0x07, 0x86,
  0x00, 0x0A, 0x7F, 0x01, 0x03, 0x03, 0x01, 0x03, 0x03, 0x01, 0xFF, 0x88, 0x88, 0x82, 0xFF, 0x81,
  0x8C, 0x02, 0x00, 0x77, 0x77, 0x82, 0x00, 0x81, 0x0C, 0x81, 0x77, 0x00, 0x00, 0x82, 0x77, 0x04,
  0x00, 0x02, 0x77, 0x77, 0x00, 0x82, 0x77, 0x81, 0x00, 0x81, 0x0F, 0x05, 0x1F, 0x0F, 0x0F, 0x1F,
  0x0F, 0x0F, 0x87, 0x00, 0x81, 0x03, 0x06, 0x01, 0x03, 0x03, 0x01, 0x03, 0x03, 0x8C, 0x86, 0xFF,
  0x00, 0x0C, 0x86, 0x00, 0x00, 0x11, 0x86, 0x00, 0x00, 0x36, 0x86, 0x00, 0x00, 0x24, 0x86, 0x00,
  0x00, 0x3F, 0x86, 0x00, 0x00, 0x07, 0x86, 0x00, 0x00, 0x02, 0x8E, 0x00, 0x00, 0x1F, 0x8E, 0x00,
  0x00, 0x01, 0x86, 0x00, 0x00, 0x33, 0x86, 0x00, 0x00, 0x33, 0x86, 0x00, 0x00, 0x30, 0x86, 0x00,
  0x00, 0x1B, 0x86, 0x00, 0x87, 0xFF, 0xFE, 0x00, 0xFE, 0x00, 0xFE, 0x00, 0xFE, 0x00, 0xFE, 0x00,
  0xFE, 0x00, 0xFE, 0x00, 0xFE, 0x00, 0xFE, 0x00, 0xC0, 0x00, 0x82, 0xFF, 0x05, 0xFE, 0xF8, 0xF3,
  0xE6, 0xE6, 0xBF, 0x82, 0x7F, 0x13, 0x1F, 0x8F, 0x07, 0x07, 0xCC, 0xC8, 0xE8, 0xE0, 0xF0, 0xF8,
  0xFE, 0xFF, 0x03, 0x03, 0x07, 0x07, 0x0F, 0x1F, 0x7F, 0xFF, 0x87, 0x0F, 0x87, 0xF0, 0x02, 0x00,
  0x3C, 0x7E, 0x84, 0xFF, 0x07, 0xC7, 0xE3, 0xC7, 0xE3, 0xC7, 0xE3, 0xC7, 0xE3, 0x84, 0xFF, 0x04,
  0x7E, 0x3C, 0x00, 0x1F, 0x3F, 0x83, 0x7F, 0x01, 0x3F, 0x1F, 0x87, 0x00, 0x01, 0xF8, 0xFC, 0x83,
  0xFE, 0x01, 0xFC, 0xF8, 0xFF};

byte COLORRLE[] = {
  0x87, 0x00, 0x87, 0x50, 0x91, 0x05, 0x84, 0xE5, 0x19, 0x0E, 0x05, 0xFE, 0xFE, 0x0E, 0x0E,
  0xFE, 0xFE, 0x0E, 0x05, 0x0E, 0x0E, 0xC0, 0xC0, 0x0E, 0x0E, 0xC0, 0x05, 0xEF, 0xEF, 0x0F, 0x0F,
  0xEF, 0xEF, 0x0F, 0x05, 0x86, 0x5F, 0x00, 0x05, 0x85, 0xE5, 0x89, 0x0E, 0x81, 0xFE, 0x81, 0x0E,
  0x81, 0xFE, 0x10, 0x0E, 0xC0, 0x0E, 0x0E, 0xC0, 0xC0, 0x0E, 0x0E, 0xC0, 0x0F, 0xEF, 0xEF, 0x0F,
  0x0F, 0xEF, 0xEF, 0x0F, 0x87, 0x5F, 0x81, 0x0E, 0x81, 0xBE, 0x81, 0x0E, 0x81, 0xBE, 0x81, 0x05,
  0x84, 0xB5, 0x0A, 0xB4, 0x05, 0x0F, 0x0F, 0x0B, 0x0B, 0x0F, 0x0F, 0x0B, 0x05, 0x05, 0x84, 0xB5,
  0x81, 0x0E, 0x17, 0x0B, 0x0E, 0xE0, 0xE0, 0x0E, 0x0E, 0xE0, 0x0B, 0x0F, 0x0F, 0x0B, 0x0B, 0x0F,
  0x0F, 0x0B, 0x05, 0xE5, 0x05, 0xE5, 0xE0, 0xE5, 0xE0, 0xE5, 0x05, 0x86, 0x0E, 0x00, 0x05, 0x86,
  0x5E, 0x87, 0x0E, 0x0F, 0xE0, 0x0E, 0x0E, 0xE0, 0xE0, 0x0E, 0x0E, 0xE0, 0xE0, 0xE5, 0xE0, 0xE5,
  0xE0, 0xE5, 0xE0, 0xE5, 0x87, 0x0E, 0x87, 0x5E, 0x02, 0x05, 0xB5, 0xB5, 0x84, 0xBA, 0x00, 0x05,
  0x86, 0x5B, 0x87, 0xBA, 0x87, 0x5B, 0x1A, 0x50, 0xF0, 0xF0, 0xB0, 0xB0, 0xE0, 0xE0, 0xB0, 0x05,
  0x0F, 0x0F, 0x0B, 0x0B, 0x0E, 0x0E, 0x0B, 0x0E, 0x0F, 0xCF, 0x0B, 0x0B, 0x0E, 0x0E, 0xEB, 0x0E,
  0xEF, 0xEF, 0x84, 0x0E, 0x81, 0x5F, 0x00, 0x53, 0x83, 0x5F, 0x03, 0x53, 0x05, 0x05, 0x02, 0x83,
  0x0F, 0x08, 0x02, 0x05, 0x05, 0x52, 0xCF, 0xCF, 0x2F, 0x2F, 0xE2, 0x84, 0x05, 0x82, 0x5E, 0x11,
  0x05, 0xA5, 0xB5, 0xA5, 0xBA, 0x0A, 0xBA, 0x0A, 0x05, 0x5A, 0x5B, 0x5A, 0x5B, 0x5A, 0x5B, 0x5A,
  0x5B, 0x0B, 0x85, 0xAB, 0x4A, 0x05, 0xFA, 0xFA, 0xCF, 0x0A, 0xFA, 0xFA, 0xCF, 0x05, 0x0F, 0x0F,
  0xFC, 0x0B, 0x0F, 0x0F, 0xFC, 0xE0, 0x0F, 0x0F, 0xFC, 0x0B, 0x0F, 0x0F, 0xFC, 0x0E, 0x0F, 0x0F,
  0xFC, 0x0B, 0x0F, 0x0F, 0xFC, 0x5E, 0x0F, 0x0F, 0xFC, 0x0B, 0x0F, 0x0F, 0xFC, 0x0E, 0x0F, 0x0F,
  0xFC, 0x0B, 0x0F, 0x0F, 0xFC, 0xE0, 0x0F, 0x0F, 0xBC, 0x0B, 0x0F, 0x0F, 0xBC, 0xB0, 0xE0, 0xE0,
  0xB0, 0xB0, 0xE0, 0xE0, 0xB0, 0x0B, 0x0E, 0x0E, 0x0B, 0x0B, 0x0E, 0x0E, 0x0B, 0x5F, 0xCB, 0xCB,
  0x82, 0x0E, 0x04, 0xCE, 0x0E, 0x5F, 0x0B, 0x0B, 0x82, 0x0C, 0x04, 0x0E, 0x0C, 0xB5, 0x0B, 0x0B,
  0x82, 0x0C, 0x04, 0x0E, 0x0C, 0x5E, 0x0B, 0x0B, 0x82, 0x0C, 0x02, 0x0E, 0x0C, 0xBA, 0x86, 0xAE,
  0x07, 0x5B, 0x5A, 0x5B, 0x5A, 0x0B, 0x0A, 0x0B, 0x0A, 0x87, 0xAB, 0x1A, 0x0A, 0xFA, 0xFA, 0xCF,
  0x0A, 0xFA, 0xFA, 0xCF, 0x0B, 0x0F, 0x0F, 0xFC, 0x0B, 0x0F, 0x0F, 0xFC, 0x0B, 0x0F, 0x0F, 0xBC,
  0x0B, 0x0F, 0x0F, 0xBC, 0x0E, 0x0E, 0xCE, 0x82, 0x0E, 0x04, 0xCE, 0x0E, 0x0C, 0x0C, 0x0E, 0x82,
  0x0C, 0x34, 0x0E, 0x0C, 0xAE, 0xFE, 0x0E, 0x0E, 0xFE, 0x0E, 0x0E, 0xFE, 0x0B, 0x0F, 0x00, 0x00,
  0x0F, 0x00, 0x00, 0x0F, 0xB6, 0x0F, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x0F, 0xAB, 0xAF, 0xA0, 0xA0,
  0xAF, 0xA0, 0xA0, 0xAF, 0xB0, 0xE0, 0xE0, 0xB0, 0xB0, 0xF0, 0xE0, 0xE0, 0x0B, 0x0E, 0x0E, 0x0B,
  0x0B, 0x0F, 0xE0, 0xE0, 0x0C, 0x0C, 0x0E, 0x82, 0x0C, 0x04, 0x0E, 0xF0, 0x0C, 0x0C, 0x0E, 0x82,
  0x0C, 0x19, 0x0E, 0x00, 0x0E, 0x0E, 0xFE, 0x0E, 0x0E, 0xFE, 0x0E, 0x0E, 0x00, 0x00, 0x0F, 0x00,
  0x00, 0x0F, 0x00, 0x00, 0xA0, 0xA0, 0xAF, 0xA0, 0xA0, 0xAF, 0xA0, 0xA0, 0x82, 0xE0, 0x84, 0x40,
  0x02, 0xE0, 0x0E, 0x0E, 0x84, 0x04, 0x82, 0x0E, 0x84, 0x04, 0x82, 0x0E, 0x84, 0x04, 0x02, 0xC0,
  0x0E, 0x0E, 0x84, 0x04, 0x02, 0x0F, 0x0E, 0x0E, 0x84, 0x04, 0x82, 0x0E, 0x84, 0x04, 0x02, 0xF0,
  0x0E, 0x0E, 0x84, 0x04, 0x02, 0x00, 0x0E, 0x0E, 0x84, 0x04, 0x02, 0xFE, 0x0E, 0x0E, 0x84, 0x04,
  0x02, 0x0F, 0x0E, 0x0E, 0x84, 0x04, 0x02, 0x6F, 0x0E, 0x0E, 0x84, 0x04, 0x02, 0x06, 0x0E, 0x0E,
  0x84, 0x04, 0x02, 0x0B, 0x0E, 0x0E, 0x84, 0x04, 0x02, 0x0B, 0x0E, 0x0E, 0x84, 0x04, 0x02, 0x0B,
  0x0E, 0x0E, 0x84, 0x04, 0x87, 0x40, 0x8F, 0x04, 0xFE, 0x00, 0xFE, 0x00, 0xFE, 0x00, 0xFE, 0x00,
  0xFE, 0x00, 0xFE, 0x00, 0xFE, 0x00, 0xFE, 0x00, 0xFE, 0x00, 0xB0, 0x00, 0x9F, 0x51, 0x8F, 0x69,
  0x02, 0x91, 0x61, 0x61, 0x82, 0x81, 0x81, 0x91, 0x87, 0x68, 0x02, 0x91, 0x61, 0x61, 0x82, 0x81,
  0x82, 0x91, 0x81, 0x61, 0x82, 0x81, 0x81, 0x91, 0x82, 0x06, 0x82, 0x08, 0x81, 0x09, 0x02, 0x91,
  0x61, 0x61, 0x82, 0x81, 0x81, 0x91, 0xFF};