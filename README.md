#### Modify latest base image in *Dockerfile*
#### Add r packages to be installed in a file: *intall.R*

#### Build docker image from Dockerfile
```  docker build -t rstudio_bio .  ```

#### Check docker image named rstudio_bio
``` docker images```

#### Save the image 
``` docker save rstudio_biouse >  /path/Rstudio_latest/rstudio_biouse_img ```
#### zip the image folder with Dockerfile and install.R
```  tar -zcvf rstudio_biouse_image.tar.gz Rstudio_latest/ ```
#### Store image in object storage
```s3cmd put rstudio_biouse_image.tar.gz  s3://proteomics```
#### Retrieve image file from object storage
```https://object.pouta.csc.fi/proteomics/rstudio_biouse_image.tar.gz ```
