locals {
  students = {
    # The map of student to create a server for, and their associated ssh keys.
    # NOTE: It's possible to enter the name of your team, instead of your own.
    # To add a new server, copy & paste the following code snippet _within_ the
    # "students" map. Check you formatting, as Terraform will error on this.
    #
    # bryan = { # Name of the server, will create a DNS record `server-of-bryan.pxl.bjth.xyz`
    #   ssh_keys = [ # Example of using multiple public SSH keys, can also just be one
    #     "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIuAcOS6oFayeYpmbe8xDPGKJels0OWq0NzrZxWCLX7d", # <- Don't miss the comma
    #     "sk-ssh-ed25519@openssh.com AAAAGnNrLXNzaC1lZDI1NTE5QG9wZW5zc2guY29tAAAAIMV/QrTO9+A0I2VCknmL56pEI+1Ekw6/9s6613NLPxTZAAAACHNzaDpmbG94 bryanhonof@Bryans-MBP"
    #   ]
    #
    yinnis = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOqrPVkvGWeMpVz4a/jyUiKhkOcMi7UjVaRjoTCSTB8A 12302157@student.pxl.be",
      ]
    }
    quinten = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILe8frS9W779nR/TVBTc1giVLt2bwfTYnfqMt7D2qozB 12300247@student.pxl.be"
      ]
    }
    Bjarni = {
      ssh_keys = [
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCsAQIjO4fIU6vZqcnQn48a3lPkyxptJkw2cDCV+IrRaoVTW6CsJPd0QSG/YievuPtGjIDJHOv83dNhS+vPLClU3FanWsJ2yXyE7Anc8cTgSLFfovuczXFglZ87y2g/pEL24kwjKBleB244BhpGiZ4xwsF6O+rMfKaYE9+/tik/iQhVYIY+Xh0BXx2N8r6q7c2YKYFSn5zrt6CqVfk4GdUkZSS2+nWrkkCtKKCTqzQHeexGP4PSkndm5S8we4hUW5EB0tIOnNcmO5OwbDVjPCHXpgqOFxNYIF+JiT7XXMd2uIuwGDI/3fT6dKMZHPVezunl7ncsOFPV668ISQCQTiLS8Fp43+jfzZH3zrxRAr2AW6MC1yAn16rnO0+viQjWxXRW+aqzu6JhsGJrnzYq4hbElu08NyUhCarbiGxJo8MeZPU0n2wTm+5oIcbAx4pEb28g6g7IxeIEstj7bInFPa4VNDrQywJDVT0WMrIIs7SSl6l2998mOlXSB+tKB+iLG6c= bjarni heselmans@5CD322B28R",
      ]
    }
    Bowen = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHZuoIwLhSLkChxOWJZqb+YpLMoE1ql0OHrLCh2fq14O bowen.liang@student.pxl.be",
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
