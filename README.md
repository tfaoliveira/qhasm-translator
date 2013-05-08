qhasm-translator
================

qhasm-translator is a tool that transforms X86 qhasm into C legible code.

Inside folder test-cases can be found an implementation written in qhasm of AES, 
referenced in this url: http://cr.yp.to/aes-speed/aesspeed-20080926.pdf

It can be used for code analysis/recognition or debugging purposes (translate to C
and then debug with a powerfull debugger: gdb). 

The tool is very modular and was easily changed to support an instance of qhasm 
language for a 16bit micro-architecture. 
