#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <openssl/evp.h>
#include <openssl/aes.h>

void encrypt(FILE *ifp, FILE *ofp,unsigned char ivec[],unsigned char ckey[])
{
    //Get file size
    fseek(ifp, 0L, SEEK_END);
    int fsize = ftell(ifp);
    //set back to normal
    fseek(ifp, 0L, SEEK_SET);

    int outLen1 = 0; int outLen2 = 0;
    unsigned char *indata = malloc(fsize);
    unsigned char *outdata = malloc(fsize*2);

 
    //Read Entire File
    fread(indata,sizeof(char),fsize, ifp);

    //Set up encryption
    EVP_CIPHER_CTX ctx;
    EVP_EncryptInit(&ctx,EVP_aes_128_gcm(),ckey,ivec);
    EVP_EncryptUpdate(&ctx,outdata,&outLen1,indata,fsize);
    EVP_EncryptFinal(&ctx,outdata + outLen1,&outLen2);
    fwrite(outdata,sizeof(char),outLen1 + outLen2,ofp);
}

void decrypt(FILE *ifp, FILE *ofp,unsigned char ivec[],unsigned char ckey[])
{
    //Get file size
    fseek(ifp, 0L, SEEK_END);
    int fsize = ftell(ifp);
    //set back to normal
    fseek(ifp, 0L, SEEK_SET);

    int outLen1 = 0; int outLen2 = 0;
    unsigned char *indata = malloc(fsize);
    unsigned char *outdata = malloc(fsize);

    //Read Entire File
    fread(indata,sizeof(char),fsize, ifp);

    //setup decryption
    EVP_CIPHER_CTX ctx;
    EVP_DecryptInit(&ctx,EVP_aes_128_gcm(),ckey,ivec);
    EVP_DecryptUpdate(&ctx,outdata,&outLen1,indata,fsize);
    EVP_DecryptFinal(&ctx,outdata + outLen1,&outLen2);
    fwrite(outdata,sizeof(char),outLen1 + outLen2,ofp);
}

int main(int argc, char *argv[])
{        
    
    FILE *fIN, *fOUT;
    if(strcmp(argv[1],"1")==0){
    //Encrypt file now
    fIN = fopen(argv[2], "rb");//File to be encrypted; plain text
    fOUT = fopen(argv[3], "wb");//File to be written; cipher text
    encrypt(fIN, fOUT,argv[4],argv[5]);
    fclose(fIN);
    fclose(fOUT);
    }
    else if(strcmp(argv[1],"2")==0){
    //Decrypt file now
    fIN = fopen(argv[2], "rb");//File to be decrypt; cipher text
    fOUT = fopen(argv[3], "wb");//Decrypted file; plain text
    decrypt(fIN,fOUT,argv[4],argv[5]);
    fclose(fIN);
    fclose(fOUT);
    }
    else
    {exit(0);}

    return 0;
}
