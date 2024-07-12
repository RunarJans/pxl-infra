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
  }
}

module "student_servers" {
  for_each     = local.students
  source       = "./modules/student_server"
  student_name = each.key
  ssh_keys     = each.value.ssh_keys
}
