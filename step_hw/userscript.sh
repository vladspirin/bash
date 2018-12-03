echo -n "Введи ім'я користувача:"                                  
read username                                                                   
                                                                                
getent passwd $username >> /dev/null                                            
                                                                                
while [ $? -eq 0 ]                                                              
  do                                                                            
    echo -n "Такий вже існує\n"                                            
    echo -n "Будь ласка, ввести інакше ім'я: "                                   
    read username                                                               
    getent passwd $username >> /dev/null                                        
  done                                                                          
                                                                                
echo -n "Введи назву групи:\n"                                                
read groupname                                                                  
                                                                                
getent group $groupname >> /dev/null                                            
                                                                                
while [ $? -eq 0 ]                                                              
  do                                                                            
   echo -e "Така група вже існує\n"                                             
   echo -e "Будь ласка, введи іншу назву:\n"                                
   read groupname                                 
   getent group $groupname >> /dev/null                                         
  done                                                                 
                                                                                
groupadd $groupname                                                             
useradd -m -s /bin/bash -g $groupname $username 
passwd $username                              
                                                                                
echo -n "Користувач створений\n"                                                       
 
