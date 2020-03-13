provider "docker" {

}

resource "docker_image" "ubuntu-image" {
        name = "ubuntu:16.04"
}
resource "docker_image" "centos-image" {
        name = "centos:6.7"
}


resource "docker_container" "ubuntu-container1" {
        name = "ubuntu-container1"
        hostname = "ubuntu-container1"
        image = docker_image.ubuntu-image.name
        command = ["tail", "-f", "/dev/null"]
        must_run = "true"
}
resource "docker_container" "centos-container1" {
        name = "centro-containeri1"
        hostname = "centro-container1"
        image = docker_image.centos-image.name
        command = ["tail", "-f", "/dev/null"]
        must_run = "true"
}
