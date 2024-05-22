locals {
  students = {
    # The map of student to create a server for, and their associated ssh keys.
    # NOTE: It's possible to enter the name of your team, instead of your own.
    # bryan = {
    #   ssh_keys = [
    #     "sk-ssh-ed25519@openssh.com AAAAGnNrLXNzaC1lZDI1NTE5QG9wZW5zc2guY29tAAAAIMV/QrTO9+A0I2VCknmL56pEI+1Ekw6/9s6613NLPxTZAAAACHNzaDpmbG94 bryanhonof@Bryans-MBP",
    #     "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIuAcOS6oFayeYpmbe8xDPGKJels0OWq0NzrZxWCLX7d"
    #   ]


    bryan = {
      ssh_keys = [
        "sk-ssh-ed25519@openssh.com AAAAGnNrLXNzaC1lZDI1NTE5QG9wZW5zc2guY29tAAAAIMV/QrTO9+A0I2VCknmL56pEI+1Ekw6/9s6613NLPxTZAAAACHNzaDpmbG94 bryanhonof@Bryans-MBP",
      ]
    }
    Robert = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIANqWnQLgp7HX+FTgKNn3TBAPL//vO8cHGnNsqGIFArK jansenrobert4@gmail.com",
      ]
    }
    axel = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIO4AjwqPqDOsot89hPrGqj8P6GXlXZP1P/JcOov1VGIX Axel.colson@student.pxl.be",
      ]
    }
    quinten = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILe8frS9W779nR/TVBTc1giVLt2bwfTYnfqMt7D2qozB 12300247@student.pxl.be",
      ]
    }
    Runar = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGLkl2lwL2wKM32WsatawJpa7icTlS0TPASbPphYvG/X runar@RunarW11",
      ]
    }
    Christophe = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJ/TzK2ORvoOQXWLWnQQcHoEuDY7PUlp051mwiaQpzeQ pandora@gmail.com",
      ]
    }
    Bjarni = {
      ssh_keys = [
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCsAQIjO4fIU6vZqcnQn48a3lPkyxptJkw2cDCV+IrRaoVTW6CsJPd0QSG/YievuPtGjIDJHOv83dNhS+vPLClU3FanWsJ2yXyE7Anc8cTgSLFfovuczXFglZ87y2g/pEL24kwjKBleB244BhpGiZ4xwsF6O+rMfKaYE9+/tik/iQhVYIY+Xh0BXx2N8r6q7c2YKYFSn5zrt6CqVfk4GdUkZSS2+nWrkkCtKKCTqzQHeexGP4PSkndm5S8we4hUW5EB0tIOnNcmO5OwbDVjPCHXpgqOFxNYIF+JiT7XXMd2uIuwGDI/3fT6dKMZHPVezunl7ncsOFPV668ISQCQTiLS8Fp43+jfzZH3zrxRAr2AW6MC1yAn16rnO0+viQjWxXRW+aqzu6JhsGJrnzYq4hbElu08NyUhCarbiGxJo8MeZPU0n2wTm+5oIcbAx4pEb28g6g7IxeIEstj7bInFPa4VNDrQywJDVT0WMrIIs7SSl6l2998mOlXSB+tKB+iLG6c= bjarni heselmans@5CD322B28R",
      ]
    }
    yinnis = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOqrPVkvGWeMpVz4a/jyUiKhkOcMi7UjVaRjoTCSTB8A 12302157@student.pxl.be",
      ]
    }
    Anish = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIrvcSz2EnQieZyeUOm7aiQN+WCng1uH8fp2Nt/BrAuo Anish.Pun@student.pxl.be",
      ]
    }
    Ward = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIPBikgZA3bQmkp25kk2A9XKAWbdVro1DXVmng1p0+X5 12302622@student.pxl.be",
      ]
    }
    Bowen = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAl4DIqbqunk0BYKzYY18063yFdqVAlSPhBbrZ/l24Db bowen.liang@student.plx.be",
      ]
    }
    Devlin = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINXXwwetHXIi76JQeo6H5emP0zIABhurDXyrtYLIVQn/ 12300703@student.pxl.be",
      ]
    }
    Kobe = {
      ssh_keys = [
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCuqtM9bD/5x/5nerXXUZFgu78GJm4QCQiAdnDgHejM5fforqLQMQeQ2IM4gKRaa9qlewe4Ct7WbddRxLRzHvVMUrLNYhTAYG35UPb3B+6FCnmxAvvdRGicWOLXH7QZkZv9HfaLvnpVvMVOLZMGL1v7IzursX2POVGtfWYikmIqbUkw/CRIKH9cb55XPTIpnM7E/kRteXw5jpTNuDqpDMVywGOf5crgNyoSjQF+/ONGi3bwFe4vl/TjK2GwAu/j55hSDhFLH6lymsOIfD+NgIEI7tz9tcRAm1qBvcCTZROXOkPfQ4GMm58eJZTmBxpql+CKAKzFnDMKPdHSTvTREP/14UWDH6LpjD64T3GIY/0bwLaK13wt9izbj4QO5+hGdvs/N1o7A4/uOlmrQOskv4J5gv7dMmlaWbhENKIKSBK5ooUcF3BL4QV1gyLANthFc5W1bs3RfvKsdeZKeEXsqz4m51jGx1SJjE7/7ifqSdvPmdK+PFecYwXAu9jHpCiY36s= kobej@LAPTOP-BSI76E8Q",
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCvAWcYBd6sb/8gDSGBk25omCKWjiUg9Zr4AmfNS4JIRidSThNl5yWBLW2ujd2KWhn2wyZFxZcXFNhYuIpC/bCy2zluguAJ0Xg5qesVjmPXlHS+lwfiQv80wpD6wDbkrsp/kI8XHSN8Zc5fVsqtyvwVBeEzVJligGmTY5L7/L0SdBZGSESR//Aydy8cMNm2CUtFsTlpsYnlo6YvE26IPJM0fMMsw5hHO3cdz5gZJJYCk1fZX6/y2A8hXQH6oZIA0ZuILxX9VJH8+gFs8mJyy6+GsfuLEQSt/2Keu344g4t97TwnCNx8Osk5RPjVHdCZwMiml7dPtM4ZPsdbDeJlUs8iYrqZxVq14UeRjJWbaSuY06gqlVejyQskzk5/0Bw5tpDjjksTYI9A9gq+buvi4gWwKdOhJpbjGMaODC2yYgSEuhdh2OKCxaeyMpGAlVpwNxByEWr2kIKq2sCP6/3xheoOW2DRMblN4UXliW+ruBmO5N3qyBRpPYwDF5gcFo/9N40= brenden@DESKTOP-AG02CM0",
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCm1aoBL0IoBeCLbTMmwwN9FwiCNCLE6MyYKULwKzKNnoSCtFtAdgQnaTgkR7NG4o2S/UYVejOpL9hZf+QJvx6mYeaFbM2KPCp/Q3ulGoW3FWDDLqQgLOw2+5g1Sxwf8gnpnpkQCUXXRW/npd/IuGWJg6YC7i2mEqITLAnbFDFmWSf3cVZ16y/sAfbkZsvznG4mBxZuIWC4wpnkR/gq70e//oH/NCdFWZ0kpvFUVCZDusnYQHOdFDwkjOE/FSiYvBLxQIRyHZ1g39y3Lgdt7dk2xsCJg/o+JcgOO+l5pTN/u4lvB9+8zKJ4G/y0hGOH1z5OdaJCnWsD1/r+Rtr075JmkUaCoRK8QOU17j2RPAHjjErAc9q+TQ0tyExeTHY0kN8XZ0Io+zrc5/GAj9opaZqKNDu83I6cn4SUEdUOWHq4Dcnqj9Iz2HQuCYYwnMBPhq/efiPyaZCyouHgLWXg5JT3b4FkeX4cN75gTvGlAG7dAQokupS2WIGfIDWWJnIo4eE= jop@Laptop-Jop",
      ]
    }
    Laye = {
      ssh_keys = [
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCt/VNM9iC00qy9xvl0+vziwMOXpeyUsLQaiMfWseaoDYJsJdp3VaofdVQCYR2A7IIciH5gnQKRBVg10r7L3GqA+hAzHRqjs6qXfFrqReRRAUgZ52ASTYnk/73tF2cOHKIunrVo9Ym79VuXf4cZ6UA7K/3f2nuJ1KXZeR3koCwophDsjSz61fObr3rTvgUlGPtRUSWb9sCM0B05SetIfKN/Z6C/PpC8SwY0aLx2jNH31YiNH6MGaB2zDVBwJJyP5uME/GEakmgeFyC/mWFEgB3TsnIw0UXpZbmPS5hotiWnKfHbsKaYQZmO3k0Zw72mvFOtEtmGISQSxP22N0zbJicRt6PBKjcLk0o84xz+RPDkkQlgb2WR9JGI7tPt11Opv3T5JFUdFr9ZBkkFXJGyGWDacJ0PWsDtGwXgdXzggNG4LF0Qa8fEfSFUHLcJSG2onc9tFskd8znJrbBLD9QCGC5SBTiqRAMRGyFs/K6AULKItONzcjy1ih2pog9jJFu+Ans= konel@Layson_Sali",
      ]
    }
    Seba = {
      ssh_keys = [
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDRtQS3o5LJ6D/fBcCgOrHOj+tKQQguG2ysukJsqVwrOkpxKWEGHJSVGq5ftFj+jr3oeWnMKcqfm243c4w/cmf7vXacqdYSBeBKiajeu4xnbV5yY5dN+2CZ9nHoz42S/7nZfHjx0gMxkG6gNim0RXgzOT4RmNKzWxqcQpcKJ0fnU7pA60D19CGYZlM2WFn7bCCJiuJcS1zwzQD99NLVgDZs60gzZcS0jqS5uRuGNiahJrEe94B7qP3TTKfM2Fmj99ObZOARFrEg3Vd9TyNYOI8JF1g+XX3TW2fDzxkkpgK2lM4IymgN9hY/WXQvZEFJfiL3QPR3gHOYK6veUewcckQBROML6oEN4zEcnbXK6w3Y5mfZ1MurscMId/mzkbiXZzDz+B8H6/JvVjjH7BTATOpxsG45J9corht/PcoDan4+enwFakQHDrsmAhoexZrqHkn+ctRVc0S//uphGNti/e0mG4gmLm5ehacGoY2L0zlMkKrdGqKewvC93qF3Rw9D/BaGte0qAD+10HfabOf2PFQA/pfWa30GbyfuPtufPIwxJHC7YRwd688kcab2pZWp3+JYhYr0q/8lN9/nouzBPhBwekNH4AScuNaPg+/WUl0s8ybeNGBWq+HuzkWgP7xdUMK4bIAueknZ3KjeJxtxWBgpKisZHst20MePwwPbo535gQ== 12301141@student.pxl.be",
      ]
    }
  }
}

module "student_servers" {
  for_each     = local.students
  source       = "./modules/student_server"
  student_name = each.key
  ssh_keys     = each.value.ssh_keys
}
