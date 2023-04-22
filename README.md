# stopSNDL
A project to learn about RSA and alternatives to it, to avoid 'Store Now Decrypt Later'.

At school, I learned about Haskell. We implemented RSA in Haskell in [TINPRO01-7](https://github.com/tdregmans/TINPRO01-7). After this course, I learned about the weaknesses of RSA through a YouTube video of [Veritasium](https://www.youtube.com/@veritasium): [How Quantum Computers Break The Internet... Starting Now](https://www.youtube.com/watch?v=-UrdExQW0cs). Messages sent encrypted with RSA are safe now, but may be decrypted by a malious party later. This called 'Store Now Decrypt Later'. 

Derek points to some proposed solutions for this weakness. I want to see if I can come up with an implementation for these solutions. 
First I want to try to implement a encryption algoritm that uses vectors to encrypt and decrypt data.

