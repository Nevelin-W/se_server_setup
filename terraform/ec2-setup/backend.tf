terraform { 
  cloud { 
    
    organization = "SEServerSetup" 

    workspaces { 
      name = "se-server-setup" 
    } 
  } 
}