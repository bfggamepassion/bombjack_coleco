/********************************************/
/*                                          */
/*   GRAPHICS TABLES  -  WIN ICVGM v3.00    */
/*                                          */
/*        WARNING : RLE COMPRESSION         */
/*                                          */
/********************************************/

#include <coleco.h>

byte NAMERLE[] = {
  0x81, 0x00, 0x00, 0xF8, 0x99, 0xFE, 0x00, 0xF9, 0x83, 0x00, 0x00, 0xF8, 0x99, 0x01, 0x00,
  0xF9, 0x83, 0x00, 0x00, 0xF8, 0x99, 0x01, 0x00, 0xF9, 0x83, 0x00, 0x00, 0xF8, 0x99, 0x01, 0x00,
  0xF9, 0x83, 0x00, 0x00, 0xF8, 0x99, 0x01, 0x00, 0xF9, 0x83, 0x00, 0x00, 0xF8, 0x99, 0x01, 0x00,
  0xF9, 0x83, 0x00, 0x00, 0xF8, 0x99, 0x01, 0x00, 0xF9, 0x83, 0x00, 0x00, 0xF8, 0x87, 0x01, 0x00,
  0x02, 0x90, 0x01, 0x00, 0xF9, 0x83, 0x00, 0x00, 0xF8, 0x84, 0x01, 0x07, 0x03, 0x04, 0x05, 0x06,
  0x07, 0x08, 0x09, 0x0A, 0x8C, 0x01, 0x00, 0xF9, 0x83, 0x00, 0x00, 0xF8, 0x84, 0x01, 0x86, 0x0B,
  0x00, 0x0C, 0x82, 0x0D, 0x06, 0x0E, 0x0F, 0x0F, 0x10, 0x11, 0x0D, 0x12, 0x82, 0x01, 0x00, 0xF9,
  0x83, 0x00, 0x00, 0xF8, 0x84, 0x01, 0x00, 0x13, 0x85, 0x14, 0x0A, 0x15, 0x16, 0x17, 0x18, 0x19,
  0x1A, 0x1B, 0x1C, 0x18, 0x19, 0x1D, 0x82, 0x01, 0x00, 0xF9, 0x83, 0x00, 0x00, 0xF8, 0x84, 0x01,
  0x00, 0x1E, 0x86, 0x1F, 0x09, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x22, 0x23, 0x24, 0x82,
  0x01, 0x00, 0xF9, 0x83, 0x00, 0x00, 0xF8, 0x84, 0x01, 0x00, 0x1E, 0x86, 0x1F, 0x09, 0x20, 0x21,
  0x22, 0x23, 0x24, 0x27, 0x28, 0x22, 0x23, 0x24, 0x82, 0x01, 0x00, 0xF9, 0x83, 0x00, 0x05, 0xF8,
  0x29, 0x2A, 0x2B, 0x2C, 0x2D, 0x86, 0x2E, 0x00, 0x2F, 0x89, 0x30, 0x03, 0x31, 0x32, 0x33, 0xF9,
  0x83, 0x00, 0x00, 0xF8, 0x99, 0x34, 0x00, 0xF9, 0x83, 0x00, 0x1B, 0xF8, 0x35, 0x36, 0x37, 0x38,
  0x39, 0x3A, 0x3B, 0x3A, 0x3B, 0x3C, 0x3D, 0x3C, 0x3D, 0x3A, 0x3B, 0x3E, 0x3F, 0x40, 0x35, 0x41,
  0x42, 0x3E, 0x3F, 0x36, 0x37, 0x3E, 0xF9, 0x83, 0x00, 0x1B, 0xF8, 0x43, 0x44, 0x45, 0x46, 0x47,
  0x48, 0x49, 0x48, 0x49, 0x4A, 0x4B, 0x4A, 0x4B, 0x48, 0x4C, 0x4D, 0x4E, 0x4F, 0x43, 0x50, 0x51,
  0x52, 0x53, 0x44, 0x45, 0x52, 0xF9, 0x83, 0x00, 0x1B, 0xF8, 0x54, 0x55, 0x54, 0x56, 0x57, 0x58,
  0x59, 0x5A, 0x5B, 0x5C, 0x5D, 0x5E, 0x5F, 0x60, 0x61, 0x62, 0x63, 0x64, 0x54, 0x55, 0x54, 0x65,
  0x66, 0x55, 0x54, 0x55, 0xF9, 0x83, 0x00, 0x1B, 0xF8, 0x67, 0x68, 0x67, 0x46, 0x69, 0x6A, 0x6B,
  0x6C, 0x6D, 0x6E, 0x6F, 0x70, 0x53, 0x71, 0x72, 0x73, 0x74, 0x75, 0x67, 0x68, 0x67, 0x76, 0x77,
  0x68, 0x67, 0x68, 0xF9, 0x83, 0x00, 0x1B, 0xF8, 0x54, 0x55, 0x54, 0x78, 0x79, 0x7A, 0x7B, 0x7C,
  0x7B, 0x7C, 0x7B, 0x7D, 0x5F, 0x60, 0x7E, 0x7F, 0x80, 0x81, 0x82, 0x83, 0x82, 0x84, 0x85, 0x83,
  0x82, 0x84, 0xF9, 0x83, 0x00, 0x1B, 0xF8, 0x67, 0x68, 0x67, 0x86, 0x87, 0x71, 0x53, 0x71, 0x53,
  0x71, 0x53, 0x71, 0x53, 0x71, 0x53, 0x88, 0x89, 0x8A, 0x8B, 0x8A, 0x8B, 0x8C, 0x8D, 0x8A, 0x8B,
  0x8C, 0xF9, 0x83, 0x00, 0x1B, 0xF8, 0x82, 0x8E, 0x8F, 0x84, 0x85, 0x84, 0x85, 0x83, 0x82, 0x8E,
  0x8F, 0x84, 0x85, 0x90, 0x91, 0x92, 0x93, 0x94, 0x95, 0x92, 0x93, 0x94, 0x95, 0x92, 0x93, 0x94,
  0xF9, 0x83, 0x00, 0x1B, 0xF8, 0x8B, 0x88, 0x89, 0x8C, 0x8D, 0x8C, 0x8D, 0x8A, 0x8B, 0x88, 0x89,
  0x8C, 0x8D, 0x96, 0x97, 0x98, 0x99, 0x9A, 0x9B, 0x98, 0x99, 0x9A, 0x9B, 0x98, 0x99, 0x9A, 0xF9,
  0x83, 0x00, 0x00, 0xF8, 0x99, 0xFE, 0x00, 0xF9, 0x81, 0x00, 0xFF};

byte PATTERNRLE[] = {
  0x95, 0x00, 0x01, 0x07, 0x3F, 0x84, 0x00, 0x07, 0x0C, 0x3B, 0x07, 0x00, 0x00, 0x07, 0x1C,
  0x01, 0x82, 0x00, 0x01, 0x01, 0x0F, 0x82, 0x3F, 0x00, 0x20, 0x82, 0x00, 0x02, 0x01, 0x02, 0x02,
  0x83, 0x00, 0x04, 0x1C, 0x3F, 0x7F, 0x7F, 0x40, 0x83, 0x00, 0x02, 0x7F, 0x0F, 0x01, 0x87, 0x00,
  0x01, 0x3F, 0x07, 0x88, 0x00, 0x00, 0x1F, 0x87, 0x00, 0x01, 0x03, 0x00, 0x82, 0x05, 0x00, 0x0F,
  0x83, 0x00, 0x82, 0x55, 0x84, 0x00, 0x00, 0x7F, 0x87, 0x00, 0x00, 0x01, 0x88, 0x00, 0x82, 0x01,
  0x81, 0x00, 0x82, 0x2A, 0x82, 0x7F, 0x81, 0x00, 0x82, 0x54, 0x04, 0x00, 0x01, 0x01, 0x70, 0x3F,
  0x85, 0x3C, 0x01, 0x70, 0x00, 0x85, 0x3C, 0x01, 0x7E, 0x00, 0x85, 0x3C, 0x01, 0x7B, 0x00, 0x85,
  0x63, 0x01, 0x42, 0x00, 0x85, 0x18, 0x01, 0x10, 0x00, 0x85, 0x39, 0x01, 0x7B, 0x00, 0x85, 0x31,
  0x02, 0x00, 0x7F, 0x0F, 0x84, 0x7F, 0x81, 0x00, 0x0F, 0x7F, 0x00, 0x3C, 0x38, 0x30, 0x3C, 0x07,
  0x03, 0x3F, 0x03, 0x1F, 0x1F, 0x1B, 0x03, 0x21, 0x03, 0x85, 0x73, 0x8F, 0x3C, 0x87, 0x63, 0x87,
  0x18, 0x87, 0x39, 0x87, 0x31, 0x87, 0x73, 0x84, 0x3C, 0x82, 0x60, 0x81, 0x03, 0x01, 0x39, 0x79,
  0x83, 0x78, 0x87, 0x60, 0x87, 0x78, 0x85, 0x00, 0x00, 0x52, 0x86, 0x00, 0x00, 0x4A, 0x86, 0x00,
  0x01, 0x2D, 0x7F, 0x85, 0x00, 0x03, 0x54, 0x00, 0x01, 0x01, 0x82, 0x07, 0x81, 0x0F, 0x8A, 0x00,
  0x81, 0x03, 0x8D, 0x00, 0x82, 0x3F, 0x01, 0x07, 0x02, 0x86, 0x00, 0x01, 0x62, 0x08, 0x85, 0x00,
  0x01, 0x4B, 0x01, 0x88, 0x00, 0x6F, 0x02, 0x55, 0x51, 0x55, 0x01, 0x2A, 0x11, 0x00, 0x3B, 0x53,
  0x51, 0x55, 0x28, 0x55, 0x77, 0x00, 0x49, 0x55, 0x5D, 0x55, 0x17, 0x55, 0x7F, 0x00, 0x51, 0x55,
  0x5F, 0x55, 0x08, 0x55, 0x55, 0x00, 0x6B, 0x55, 0x7D, 0x34, 0x57, 0x54, 0x4D, 0x00, 0x00, 0x51,
  0x61, 0x53, 0x15, 0x55, 0x4D, 0x00, 0x00, 0x10, 0x05, 0x55, 0x10, 0x55, 0x55, 0x00, 0x00, 0x08,
  0x5F, 0x55, 0x08, 0x55, 0x55, 0x00, 0x00, 0x75, 0x79, 0x35, 0x57, 0x55, 0x4D, 0x00, 0x29, 0x55,
  0x41, 0x2C, 0x15, 0x2A, 0x4D, 0x00, 0x75, 0x55, 0x05, 0x55, 0x10, 0x55, 0x55, 0x00, 0x40, 0x11,
  0x04, 0x55, 0x51, 0x55, 0x04, 0x00, 0x6D, 0x55, 0x45, 0x55, 0x17, 0x55, 0x01, 0x00, 0x23, 0x35,
  0x75, 0x55, 0x14, 0x55, 0x11, 0x57, 0x83, 0x55, 0x06, 0x40, 0x55, 0x48, 0x55, 0x22, 0x55, 0x57,
  0x82, 0x55, 0x64, 0x2A, 0x55, 0x21, 0x52, 0x76, 0x55, 0x24, 0x55, 0x28, 0x55, 0x77, 0x5D, 0x75,
  0x2A, 0x7F, 0x15, 0x79, 0x54, 0x02, 0x54, 0x75, 0x54, 0x08, 0x5C, 0x2A, 0x55, 0x40, 0x55, 0x51,
  0x15, 0x0C, 0x45, 0x54, 0x55, 0x11, 0x45, 0x51, 0x54, 0x51, 0x57, 0x61, 0x55, 0x77, 0x5D, 0x75,
  0x2A, 0x75, 0x15, 0x79, 0x55, 0x02, 0x55, 0x75, 0x57, 0x30, 0x5D, 0x2A, 0x55, 0x11, 0x45, 0x51,
  0x54, 0x51, 0x6A, 0x6A, 0x2A, 0x40, 0x2A, 0x51, 0x2A, 0x10, 0x1D, 0x2A, 0x55, 0x11, 0x45, 0x51,
  0x54, 0x01, 0x54, 0x30, 0x55, 0x05, 0x57, 0x50, 0x55, 0x55, 0x2A, 0x3E, 0x55, 0x7B, 0x4A, 0x6E,
  0x55, 0x24, 0x55, 0x14, 0x55, 0x44, 0x55, 0x15, 0x82, 0x55, 0x18, 0x54, 0x2A, 0x40, 0x2A, 0x51,
  0x2A, 0x10, 0x3A, 0x54, 0x55, 0x11, 0x45, 0x51, 0x54, 0x01, 0x57, 0x61, 0x55, 0x40, 0x75, 0x51,
  0x55, 0x01, 0x2A, 0x11, 0x82, 0x55, 0x1A, 0x04, 0x55, 0x51, 0x55, 0x04, 0x55, 0x75, 0x55, 0x5F,
  0x55, 0x08, 0x55, 0x55, 0x29, 0x0A, 0x54, 0x7D, 0x34, 0x57, 0x54, 0x4D, 0x14, 0x10, 0x55, 0x61,
  0x53, 0x14, 0x82, 0x55, 0x1C, 0x51, 0x55, 0x05, 0x55, 0x40, 0x55, 0x55, 0x14, 0x10, 0x55, 0x61,
  0x53, 0x54, 0x55, 0x35, 0x55, 0x51, 0x55, 0x05, 0x55, 0x40, 0x56, 0x56, 0x14, 0x10, 0x55, 0x61,
  0x53, 0x22, 0x82, 0x55, 0x30, 0x51, 0x55, 0x05, 0x55, 0x5F, 0x55, 0x35, 0x14, 0x10, 0x55, 0x61,
  0x53, 0x25, 0x5A, 0x52, 0x55, 0x51, 0x55, 0x05, 0x55, 0x10, 0x55, 0x55, 0x14, 0x10, 0x55, 0x61,
  0x53, 0x15, 0x55, 0x4D, 0x6A, 0x60, 0x7A, 0x28, 0x6A, 0x00, 0x6A, 0x48, 0x34, 0x08, 0x15, 0x7C,
  0x15, 0x75, 0x17, 0x7F, 0x75, 0x2A, 0x82, 0x55, 0x1B, 0x65, 0x55, 0x77, 0x2A, 0x55, 0x2A, 0x7B,
  0x55, 0x51, 0x2A, 0x7B, 0x68, 0x10, 0x2A, 0x07, 0x2A, 0x15, 0x2E, 0x01, 0x15, 0x54, 0x55, 0x55,
  0x54, 0x34, 0x55, 0x11, 0x57, 0x83, 0x55, 0x06, 0x40, 0x5D, 0x40, 0x55, 0x05, 0x57, 0x50, 0x82,
  0x55, 0x4A, 0x41, 0x54, 0x02, 0x54, 0x75, 0x54, 0x0A, 0x5C, 0x2A, 0x55, 0x40, 0x55, 0x45, 0x15,
  0x11, 0x55, 0x51, 0x55, 0x45, 0x15, 0x45, 0x50, 0x44, 0x5D, 0x7A, 0x55, 0x00, 0x55, 0x45, 0x55,
  0x31, 0x15, 0x51, 0x56, 0x46, 0x16, 0x46, 0x50, 0x46, 0x5F, 0x79, 0x55, 0x20, 0x75, 0x2A, 0x55,
  0x28, 0x55, 0x18, 0x55, 0x0A, 0x55, 0x2A, 0x5F, 0x3D, 0x74, 0x55, 0x5A, 0x20, 0x7A, 0x21, 0x5A,
  0x20, 0x5A, 0x14, 0x55, 0x40, 0x55, 0x51, 0x15, 0x10, 0x45, 0x54, 0x6B, 0x2A, 0x82, 0x6A, 0x60,
  0x20, 0x6E, 0x60, 0x15, 0x7D, 0x15, 0x77, 0x05, 0x0E, 0x15, 0x3A, 0x5D, 0x22, 0x22, 0x71, 0x55,
  0x3A, 0x55, 0x2A, 0x2A, 0x05, 0x28, 0x2F, 0x55, 0x2A, 0x2A, 0x01, 0x2A, 0x04, 0x2B, 0x11, 0x0A,
  0x1C, 0x2A, 0x74, 0x45, 0x44, 0x45, 0x1D, 0x54, 0x75, 0x55, 0x54, 0x57, 0x2A, 0x55, 0x55, 0x2A,
  0x2C, 0x55, 0x77, 0x16, 0x08, 0x54, 0x1F, 0x54, 0x57, 0x74, 0x7F, 0x11, 0x01, 0x55, 0x61, 0x53,
  0x15, 0x55, 0x4D, 0x54, 0x44, 0x55, 0x05, 0x55, 0x10, 0x55, 0x55, 0x51, 0x41, 0x55, 0x61, 0x53,
  0x15, 0x55, 0x4D, 0x54, 0x40, 0x55, 0x61, 0x53, 0x15, 0x55, 0x4D, 0x6E, 0x51, 0x55, 0x05, 0x55,
  0x10, 0x82, 0x55, 0x7F, 0x7F, 0x09, 0x5A, 0x7F, 0x64, 0x37, 0x74, 0x57, 0x11, 0x02, 0x18, 0x5A,
  0x6D, 0x27, 0x7F, 0x2E, 0x00, 0x0A, 0x68, 0x02, 0x20, 0x00, 0x77, 0x55, 0x7F, 0x00, 0x22, 0x6C,
  0x44, 0x48, 0x7F, 0x51, 0x00, 0x0A, 0x68, 0x02, 0x20, 0x00, 0x77, 0x55, 0x0A, 0x04, 0x00, 0x41,
  0x55, 0x3A, 0x28, 0x51, 0x20, 0x00, 0x00, 0x12, 0x48, 0x15, 0x6A, 0x5D, 0x22, 0x5D, 0x47, 0x2A,
  0x51, 0x55, 0x2A, 0x54, 0x20, 0x2B, 0x77, 0x50, 0x38, 0x54, 0x2E, 0x00, 0x5F, 0x00, 0x08, 0x7F,
  0x1B, 0x09, 0x38, 0x15, 0x44, 0x21, 0x0D, 0x6D, 0x31, 0x50, 0x2B, 0x3C, 0x3E, 0x76, 0x45, 0x6F,
  0x3E, 0x5F, 0x11, 0x77, 0x19, 0x21, 0x69, 0x62, 0x45, 0x20, 0x08, 0x4D, 0x42, 0x10, 0x7F, 0x21,
  0x14, 0x51, 0x40, 0x2E, 0x20, 0x00, 0x02, 0x14, 0x0D, 0x1E, 0x5B, 0x51, 0x7F, 0x09, 0x5A, 0x7F,
  0x64, 0x37, 0x74, 0x51, 0x7F, 0x11, 0x02, 0x18, 0x5A, 0x6D, 0x27, 0x7F, 0x15, 0x0A, 0x04, 0x03,
  0x7F, 0x00, 0x3B, 0x69, 0x50, 0x02, 0x1C, 0x04, 0x15, 0x7F, 0x17, 0x0F, 0x01, 0x09, 0x05, 0x0E,
  0x67, 0x38, 0x60, 0x3F, 0x00, 0x7F, 0x10, 0x0C, 0x06, 0x75, 0x06, 0x23, 0x32, 0x20, 0x32, 0x00,
  0x40, 0x40, 0x44, 0x40, 0x04, 0x77, 0x30, 0x40, 0x70, 0x50, 0x1A, 0x36, 0x0B, 0x11, 0x40, 0x09,
  0x00, 0x41, 0x11, 0x10, 0x03, 0x5F, 0x78, 0x60, 0x0F, 0x03, 0x03, 0x52, 0x20, 0x0C, 0x02, 0x01,
  0x08, 0x26, 0x12, 0x27, 0x60, 0x7F, 0x20, 0x04, 0x06, 0x0C, 0x02, 0x02, 0x7F, 0x7F, 0x10, 0x48,
  0x37, 0x20, 0x11, 0x08, 0x15, 0x08, 0x20, 0x40, 0x40, 0x3F, 0x7F, 0x40, 0x47, 0x21, 0x04, 0x0D,
  0x00, 0x03, 0x03, 0x5F, 0x04, 0x7F, 0x18, 0x00, 0x72, 0x2C, 0x4F, 0x3F, 0x5F, 0x04, 0x2F, 0x64,
  0x3A, 0x1F, 0x24, 0x23, 0x00, 0x06, 0x00, 0x7F, 0x3F, 0x7F, 0x5F, 0x68, 0x03, 0xFE, 0x00, 0xFE,
  0x00, 0xFE, 0x00, 0xFE, 0x00, 0xFE, 0x00, 0xA4, 0x00, 0x1F, 0xFE, 0xFD, 0xFC, 0x8F, 0x3F, 0x7F,
  0xE3, 0xC7, 0xBF, 0x3F, 0x7F, 0xE3, 0xF9, 0xFC, 0xFE, 0xFE, 0xCF, 0xDF, 0xFF, 0xFF, 0xFC, 0x7F,
  0x3F, 0x8F, 0xEE, 0xE6, 0xC6, 0x0E, 0x1E, 0xFC, 0xF9, 0xE3, 0x87, 0xA1, 0x87, 0x85, 0x02, 0x00,
  0x7E, 0x7E, 0x84, 0x5E, 0x87, 0xA1, 0x84, 0x5E, 0x03, 0x42, 0x7E, 0x00, 0x00, 0x83, 0x7F, 0x03,
  0x60, 0x7F, 0x00, 0xFF, 0x83, 0x00, 0x04, 0xFF, 0x00, 0xFF, 0x00, 0xFE, 0x82, 0xFA, 0x02, 0x02,
  0xFE, 0x00, 0xFF};

byte COLORRLE[] = {
  0x87, 0x00, 0x8D, 0x05, 0x81, 0xB5, 0x84, 0x05, 0x82, 0xB5, 0x81, 0x05, 0x82, 0xB5, 0x82,
  0x0B, 0x84, 0xB5, 0x00, 0x5B, 0x82, 0x0B, 0x82, 0x5B, 0x83, 0x0B, 0x83, 0xB5, 0x00, 0x5B, 0x82,
  0x0B, 0x00, 0x05, 0x82, 0x5B, 0x83, 0x0B, 0x83, 0x05, 0x81, 0x5B, 0x81, 0x0B, 0x86, 0x05, 0x02,
  0x5B, 0x0B, 0x0F, 0x82, 0x0B, 0x04, 0x0F, 0x0B, 0x0B, 0x5B, 0x0F, 0x82, 0xFB, 0x04, 0xBF, 0x0B,
  0x0B, 0x05, 0x05, 0x82, 0xFB, 0x0A, 0x00, 0x0B, 0x0B, 0x05, 0x05, 0x5B, 0x0B, 0x0B, 0x00, 0x0B,
  0x0B, 0x82, 0x05, 0x00, 0x5B, 0x83, 0x0B, 0x82, 0x05, 0x81, 0x0B, 0x82, 0xFB, 0x81, 0x05, 0x82,
  0xBF, 0x04, 0x0F, 0xBF, 0xBF, 0x05, 0x05, 0x82, 0xFB, 0x04, 0x00, 0x5B, 0x5B, 0xB8, 0x05, 0x85,
  0xF5, 0x01, 0xB0, 0x00, 0x85, 0xF0, 0x01, 0xB0, 0x00, 0x85, 0xF0, 0x01, 0xBF, 0x00, 0x85, 0xF0,
  0x01, 0x0B, 0x00, 0x85, 0xF0, 0x01, 0x0B, 0x00, 0x85, 0x0F, 0x01, 0xB0, 0x00, 0x85, 0xF0, 0x02,
  0x0B, 0xB0, 0x0B, 0x84, 0x0F, 0x81, 0x0B, 0x01, 0xB0, 0x05, 0x82, 0xB5, 0x03, 0x05, 0xFB, 0x0B,
  0xBD, 0x83, 0xB5, 0x02, 0xB0, 0x0B, 0x50, 0x85, 0x0F, 0x87, 0xF5, 0x97, 0xF0, 0x87, 0x0F, 0x87,
  0xF0, 0x87, 0x0F, 0x84, 0x05, 0x82, 0xF0, 0x81, 0xB0, 0x95, 0xF0, 0x85, 0x05, 0x01, 0x85, 0x08,
  0x85, 0x05, 0x01, 0x85, 0x08, 0x85, 0x05, 0x81, 0x85, 0x85, 0x05, 0x01, 0x58, 0x08, 0x83, 0xB5,
  0x03, 0x85, 0xB5, 0xB8, 0x08, 0x83, 0x0B, 0x0D, 0x08, 0x0B, 0x0B, 0x08, 0x0B, 0x0B, 0x8B, 0x8B,
  0x08, 0x0B, 0x0B, 0x08, 0x0B, 0x0B, 0x85, 0x08, 0x81, 0x05, 0x84, 0x58, 0x00, 0x08, 0x85, 0x05,
  0x01, 0x85, 0x58, 0x85, 0x05, 0x81, 0x58, 0x8A, 0x08, 0x01, 0x80, 0x08, 0x82, 0x80, 0x03, 0x08,
  0x80, 0x80, 0x08, 0x82, 0x80, 0x81, 0x08, 0x81, 0x80, 0x03, 0x08, 0x80, 0x08, 0x80, 0x82, 0x08,
  0x01, 0x80, 0x08, 0x82, 0x80, 0x81, 0x08, 0x81, 0x80, 0x03, 0x08, 0x80, 0x08, 0x80, 0x83, 0x08,
  0x04, 0x80, 0x08, 0x80, 0x08, 0x80, 0x82, 0x08, 0x04, 0x80, 0x08, 0x80, 0x08, 0x80, 0x83, 0x08,
  0x82, 0x80, 0x82, 0x08, 0x04, 0x80, 0x08, 0x80, 0x08, 0x80, 0x83, 0x08, 0x84, 0x80, 0x07, 0x08,
  0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x82, 0x08, 0x04, 0x80, 0x08, 0x80, 0x08, 0x80, 0x82,
  0x08, 0x04, 0x80, 0x08, 0x80, 0x08, 0x80, 0x82, 0x08, 0x0B, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08,
  0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x83, 0x80, 0x02, 0x08, 0x80, 0x08, 0x84, 0x80, 0x00, 0x08,
  0x84, 0x80, 0x01, 0x08, 0x80, 0x82, 0x08, 0x01, 0x80, 0x08, 0x82, 0x80, 0x00, 0x08, 0x83, 0x80,
  0x12, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08,
  0x80, 0x80, 0x08, 0x80, 0x82, 0x08, 0x01, 0x80, 0x08, 0x82, 0x80, 0x00, 0x08, 0x83, 0x80, 0x06,
  0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x88, 0x80, 0x04, 0x08, 0x80, 0x08, 0x80, 0x08, 0x82,
  0x80, 0x06, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x80, 0x82, 0x08, 0x0C, 0x80, 0x08, 0x08, 0x80,
  0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x88, 0x80, 0x0C, 0x08, 0x80, 0x08, 0x80,
  0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x82, 0x80, 0x0B, 0x08, 0x80, 0x08, 0x80,
  0x08, 0x80, 0x08, 0x80, 0x80, 0x08, 0x80, 0x08, 0x82, 0x80, 0x81, 0x08, 0x81, 0x80, 0x53, 0x08,
  0x80, 0x08, 0x80, 0x08, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80,
  0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80,
  0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x80, 0x08, 0x08, 0x80, 0x08, 0x80,
  0x08, 0x08, 0x80, 0x08, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x80, 0x08, 0x08, 0x80, 0x08, 0x80,
  0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80,
  0x08, 0x00, 0x08, 0x83, 0x80, 0x04, 0x08, 0x80, 0x08, 0x80, 0x08, 0x82, 0x80, 0x04, 0x08, 0x80,
  0x08, 0x80, 0x08, 0x82, 0x80, 0x81, 0x08, 0x81, 0x80, 0x00, 0x08, 0x87, 0x80, 0x16, 0x08, 0x80,
  0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80,
  0x08, 0x80, 0x08, 0x80, 0x08, 0x83, 0x80, 0x00, 0x08, 0x83, 0x80, 0x0D, 0x08, 0x80, 0x08, 0x80,
  0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x82, 0x08, 0x0E, 0x00, 0x08, 0x80,
  0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x08, 0x8C, 0x80, 0x02, 0x08,
  0x80, 0x08, 0x87, 0x80, 0x13, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08,
  0x80, 0x08, 0x80, 0x08, 0x80, 0x80, 0x08, 0x80, 0x08, 0x85, 0x80, 0x81, 0x08, 0x86, 0x80, 0x82,
  0x08, 0x89, 0x80, 0x06, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x83, 0x80, 0x81, 0x08, 0x81,
  0x80, 0x00, 0x08, 0x82, 0x80, 0x2F, 0x08, 0x80, 0x08, 0x80, 0x08, 0x08, 0x80, 0x08, 0x80, 0x08,
  0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08,
  0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08, 0x80, 0x08,
  0x80, 0x08, 0x80, 0x80, 0x20, 0x02, 0x82, 0x20, 0x05, 0x02, 0x20, 0x80, 0x82, 0x02, 0x02, 0x82,
  0x20, 0x01, 0x02, 0x80, 0x82, 0x02, 0x81, 0x20, 0x03, 0x00, 0x08, 0x08, 0x20, 0x82, 0x02, 0x81,
  0x20, 0x01, 0x02, 0x08, 0x82, 0x02, 0x81, 0x20, 0x00, 0x00, 0x82, 0x08, 0x82, 0x02, 0x03, 0x20,
  0x02, 0x20, 0x08, 0x84, 0x02, 0x81, 0x20, 0x82, 0x80, 0x82, 0x08, 0x83, 0x80, 0x81, 0x08, 0x83,
  0x80, 0x03, 0x00, 0x02, 0x00, 0x20, 0x83, 0x08, 0x83, 0x20, 0x00, 0x02, 0x85, 0x80, 0x06, 0x08,
  0x80, 0x80, 0x82, 0x08, 0x08, 0x20, 0x82, 0x08, 0x81, 0x28, 0x0C, 0x08, 0x02, 0x20, 0x20, 0x02,
  0x20, 0x80, 0x08, 0x08, 0x02, 0x20, 0x00, 0x20, 0x83, 0x80, 0x02, 0x08, 0x20, 0x02, 0x82, 0x20,
  0x05, 0x02, 0x20, 0x08, 0x82, 0x02, 0x02, 0x82, 0x20, 0x0D, 0x02, 0x08, 0x08, 0x02, 0x82, 0x20,
  0x02, 0x20, 0x02, 0x08, 0x08, 0x28, 0x02, 0x08, 0x82, 0x82, 0x81, 0x28, 0x0B, 0x08, 0x28, 0x82,
  0x28, 0x08, 0x80, 0x08, 0x80, 0x28, 0x28, 0x08, 0x82, 0x83, 0x08, 0x00, 0x28, 0x82, 0x08, 0x06,
  0x28, 0x08, 0x08, 0x80, 0x08, 0x08, 0x28, 0x82, 0x02, 0x83, 0x20, 0x11, 0x00, 0x80, 0x08, 0x08,
  0x82, 0x80, 0x28, 0x02, 0x80, 0x80, 0x20, 0x08, 0x08, 0x28, 0x28, 0x08, 0x28, 0x28, 0x82, 0x08,
  0x00, 0x80, 0x83, 0x08, 0x06, 0x28, 0x08, 0x80, 0x80, 0x28, 0x28, 0x80, 0x85, 0x08, 0x1A, 0x28,
  0x08, 0x80, 0x80, 0x28, 0x28, 0x08, 0x08, 0x82, 0x08, 0x28, 0x08, 0x02, 0x08, 0x80, 0x08, 0x08,
  0x82, 0x02, 0x80, 0x80, 0x82, 0x82, 0x20, 0x02, 0x08, 0x02, 0x83, 0x08, 0x81, 0x82, 0x81, 0x80,
  0x01, 0x08, 0x80, 0xFE, 0x00, 0xFE, 0x00, 0xFE, 0x00, 0xFE, 0x00, 0xFE, 0x00, 0xA4, 0x00, 0x82,
  0x51, 0x82, 0x81, 0x81, 0x8F, 0x82, 0x51, 0x84, 0x81, 0x81, 0x8F, 0x8D, 0x81, 0x8F, 0x1A, 0x87,
  0xA1, 0x87, 0x1A, 0x8F, 0xA1, 0x87, 0x1A, 0x87, 0xA1, 0xFF};

byte SPATTERNRLE[] = {
  0x00, 0x91, 0x9E, 0x00, 0xFF};

int SPRITESINITSIZE = 4;

byte SPRITESINIT[] = {
  204, 0, 0, 15};
