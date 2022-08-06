
resource "digitalocean_droplet" "web" {
  image     = "ubuntu-18-04-x64"
  name      = "final-digitalocean-droplet"
  region    = "nyc1"
  size      = "s-1vcpu-1gb"
  user_data = "${file("userdata.yaml")}"
  ssh_keys  = ["${digitalocean_ssh_key.leokey.fingerprint}"]
}


