.model small            
.code
org 100h
jmp mulai
    nama    db 0dh, 0ah, 0dh, 0ah,"Nama anda  : ", '$'
    nik     db 0dh, 0ah,"NIK anda   : ", '$'
    no      db 0dh, 0ah,"No. HP     : ", '$'
        tampung_nama db 30,?,30 dup (?)
        tampung_nik db 30,?,30 dup (?)
        tampung_no db 30,?,30 dup (?)
    j1      db 0dh, 0ah,"---- PROGRAM PERSEWAAN TENDA ----", '$'  
    j2      db 0dh, 0ah,"         ", '$'
    j3      db 0dh, 0ah,"Silakan masukkan data diri anda." , '$' 
    j4      db 0dh, 0dh, 0dh, 0ah, 0dh, 0ah, "Selamat datang di persewaan tenda Adventure....", '$' 
    j5      db 0dh, 0ah," "
            db 0dh, 0ah, "Berikut tenda yang tersedia saat ini (max 2 hari): ", 0dh, 0ah      

            db "=======================================================", 0dh, 0ah
            db "|| 1. Tenda Kapasitas 2     (1 hari) Rp. 20.000      ||", 0dh, 0ah  
            db "|| 2. Tenda Kapasitas 2     (2 hari) Rp. 38.000      ||", 0dh, 0ah
            db "|| 3. Tenda Kapasitas 4     (1 hari) Rp. 40.000      ||", 0dh, 0ah
            db "|| 4. Tenda Kapasitas 4     (2 hari) rp. 58.000      ||", 0dh, 0ah 
            db "|| 5. Tenda Kapasitas 6     (1 hari) Rp. 60.000      ||", 0dh, 0ah
            db "|| 6. Tenda Kapasitas 6     (2 hari) Rp. 78.000      ||", 0dh, 0ah
            db "|| 7. Tenda Pramuka         (1 hari) Rp. 25.000      ||", 0dh, 0ah
            db "|| 8. Tenda Pramuka         (2 hari) Rp. 32.000      ||", 0dh, 0ah
            db "=======================================================", 0dh, 0ah
            db 0dh, 0ah, "Tenda nomor berapa yang akan anda sewa ? ", '$'
    j6      db 0dh, 0ah, 0dh, 0ah, "Proses berhasil, berikut rinciannya :", '$'                                          
    j7      db 0dh, 0ah,0dh, 0ah, "Tenda bisa diambill di kasir setelah pembayaran",0dh, 0ah, "Terima kasih atas kunjungan anda...", '$'
    j8      db 0dh, 0ah, 0dh, 0ah,"Apakah ada tambahan tenda yang disewa ?(Y, N)", '$'
    salah   db 0dh, 0ah, "Tidak ada pilihan.", '$'
    hsl1    db 0dh, 0ah, 0dh, 0ah, "Tenda Kapasitas 2  (1 hari)",0dh, 0ah, "Harga              Rp.20.000",0dh, 0ah,0dh, 0ah, "Tenda harap dikembalikan pada waktunya dengan kondisi utuh." , '$'
    hsl2    db 0dh, 0ah, 0dh, 0ah, "Tenda Kapasitas 2  (2 hari)",0dh, 0ah, "Harga              Rp.38.000",0dh, 0ah,0dh, 0ah, "Tenda harap dikembalikan pada waktunya dengan kondisi utuh." , '$'
    hsl3    db 0dh, 0ah, 0dh, 0ah, "Tenda Kapasitas 4  (1 hari)",0dh, 0ah, "Harga              Rp.40.000",0dh, 0ah,0dh, 0ah, "Tenda harap dikembalikan pada waktunya dengan kondisi utuh." , '$'
    hsl4    db 0dh, 0ah, 0dh, 0ah, "Tenda Kapasitas 4  (2 hari)",0dh, 0ah, "Harga              Rp.58.000",0dh, 0ah,0dh, 0ah, "Tenda harap dikembalikan pada waktunya dengan kondisi utuh." , '$'
    hsl5    db 0dh, 0ah, 0dh, 0ah, "Tenda Kapasitas 6  (1 hari)",0dh, 0ah, "Harga              Rp.60.000",0dh, 0ah,0dh, 0ah, "Tenda harap dikembalikan pada waktunya dengan kondisi utuh." , '$'
    hsl6    db 0dh, 0ah, 0dh, 0ah, "Tenda Kapasitas 6  (2 hari)",0dh, 0ah, "Harga              Rp.78.000",0dh, 0ah,0dh, 0ah, "Tenda harap dikembalikan pada waktunya dengan kondisi utuh." , '$'
    hsl7    db 0dh, 0ah, 0dh, 0ah, "Tenda Pramuka  (1 hari)",0dh, 0ah, "Harga           Rp.25.000",0dh, 0ah,0dh, 0ah, "Tenda harap dikembalikan pada waktunya dengan kondisi utuh." , '$'
    hsl8    db 0dh, 0ah, 0dh, 0ah, "Tenda Pramuka  (2 hari)",0dh, 0ah, "Harga           Rp.32.000",0dh, 0ah,0dh, 0ah, "Tenda harap dikembalikan pada waktunya dengan kondisi utuh." , '$'

mulai:
    mov ah,09h
    lea dx,j1
    int 21h
        
    mov ah,09h
    lea dx,j2
    int 21h        
        
    mov ah,09h
    lea dx,j3
    int 21h       
                               
    mov ah,09h
    lea dx,nama
    int 21h        

    MOV ah, 0ah
    LEA dx, tampung_nama
    INT 21h
    PUSH dx 
    
    MOV ah, 09
    LEA dx, nik
    INT 21h
    
    MOV ah, 0ah
    LEA dx, tampung_nik
    INT 21h
    PUSH dx    
          
    MOV ah, 09
    LEA dx, no
    INT 21h
              
    MOV ah, 0ah
    LEA dx, tampung_no
    INT 21h
    PUSH dx
    
    MOV ah, 09
    LEA dx, j4
    INT 21h

mulai2:        
    MOV ah, 09
    LEA dx, j5
    INT 21h   
    
Proses1:
    MOV ah, 01
    INT 21h
    
    CMP al, '1'
    JE tenda1_1hari
    
    CMP al, '2'
    JE tenda1_2hari
    
    CMP al, '3'
    JE tenda2_1hari   
    
    CMP al, '4'
    JE tenda2_2hari    
      
    CMP al, '5'
    JE tenda3_1hari
    
    CMP al, '6'
    JE tenda3_2hari
    
    CMP al, '7'
    JE tenda4_1hari
    
    CMP al, '8'
    JE tenda4_2hari
          
    JNE input_salah 
    
Proses2:
    MOV ah, 09
    LEA dx, j8
    INT 21h
    MOV ah, 01
    INT 21h
    
    CMP al, 'Y'
    JE sewa_lagi
    
    CMP al, 'y'
    JE sewa_lagi
    
    CMP al, 'N'
    JE end
    
    CMP al, 'n'
    JE end
    
    JNE input_salah

tenda1_1hari:
     MOV ah, 09
     LEA dx, j6
     INT 21h
     
     MOV ah, 09
     LEA dx, hsl1
     INT 21h   
     
     JMP Proses2
     
tenda1_2hari:
     MOV ah, 09
     LEA dx, j6
     INT 21h
     
     MOV ah, 09
     LEA dx, hsl2       
     
     INT 21h   
     
     JMP Proses2

tenda2_1hari:
     MOV ah, 09
     LEA dx, j6
     INT 21h
     
     MOV ah, 09
     LEA dx, hsl3
     INT 21h
     
     JMP Proses2 
     
tenda2_2hari:
     MOV ah, 09
     LEA dx, j6
     INT 21h
     
     MOV ah, 09
     LEA dx, hsl4
     INT 21h
     
     JMP Proses2
     
tenda3_1hari:
     MOV ah, 09
     LEA dx, j6
     INT 21h
     
     MOV ah, 09
     LEA dx, hsl5
     INT 21h
     
     JMP Proses2 
     
tenda3_2hari:
     MOV ah, 09
     LEA dx, j6 
     INT 21h
     
     MOV ah, 09
     LEA dx, hsl6
     INT 21h 
     
     JMP Proses2
     
tenda4_1hari:
     MOV ah, 09
     LEA dx, j6
     
     MOV ah, 09
     LEA dx, hsl7
     INT 21h 
     
     JMP Proses2
     
tenda4_2hari:
     MOV ah, 09
     LEA dx, j6
     INT 21h
     
     MOV ah, 09
     LEA dx, hsl8
     INT 21h
     
     JMP Proses2

sewa_lagi:
    JMP mulai2

end:
    MOV ah, 09
    LEA dx, j7
    INT 21h
    INT 20h
    JMP Exit

input_salah:
    MOV ah, 09
    LEA dx, salah
    INT 21h
    
    JMP Proses2

JMP Exit
Exit:
RET     