variable "proxmox_hosts" {
  type = map(object({
    ip_address    = string
    wol_address   = string
    description   = string
  }))
  # Note: retrieving system type remotely: dmidecode | grep -A3 '^System Information'
  # Note: existting pve-02 moving to pve-06
  # Note: existing pve-06 moving to pve-08
  # Note: existing pve-07 moving to pve-09
  # Note: existing pve-08 moving to pve-05

  default = {
    "pve-01" = {
      ip_address    = "10.0.0.61"
      wol_address   = "88:ae:dd:0d:0b:c4"
      description   = "Intel NUC11PAHi7"
    }
    "pve-02" = {
      ip_address    = "10.0.0.62"
      wol_address   = "00:00:00:00:00:00"
      description   = "Intel NUC11PAHi7"
    }
    # pve-03 reserved for future use
    "pve-04" = {
      ip_address    = "10.0.0.64"
      wol_address   = "ec:8e:b5:7a:ab:4a"
      description   = "HP EliteDesk 800 G2 DM 35W"
    }
    "pve-05" = {
      ip_address    = "10.0.0.65"
      wol_address   = "50:65:f3:4a:49:18"
      description   = "HP ProDesk 600 G1 DM"
    }
    # "pve-05" = {
    #   ip_address    = "10.0.0.65"
    #   wol_address   = "00:00:00:00:00:00"
    #   description   = "HP EliteDesk Pro 600 G3"
    # }
    "pve-06" = {
      ip_address    = "10.0.0.66"
      wol_address   = "ec:b1:d7:2b:97:8d"
      description   = "HP ProDesk 600 G1 DM"
    }
    # pve-07 reserved for future use    
    "pve-08" = {
      ip_address    = "10.0.0.68"
      wol_address   = "00:00:00:00:00:00"
      description   = "Hyve Zeus v3"
    }
    "pve-09" = {
      ip_address    = "10.0.0.69"
      wol_address   = "00:00:00:00:00:00"
      description   = "Hyve Zeus v3"
    }
    

  }
}