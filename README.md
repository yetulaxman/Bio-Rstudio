#### Modify the base image to be latest
#### add r packages to be installed in intall.R

### build docker image from dockerfile
```  docker build -t rstudio_bio .  ```

### check docker image named rstudio_bio
``` docker images```

### save the image 
``` docker save rstudio_biouse >  /path/Rstudio_latest/rstudio_biouse_img ```
### zip the image folder with docker file and install.R
```  tar -zcvf rstudio_biouse_image.tar.gz Rstudio_latest/ ```
#### store in object storage
```s3cmd put rstudio_biouse_image.tar.gz  s3://proteomics```
