# Swiss Army Knife

## **Infrastructure**

- [x] **Deploy**  
    Creates the infrastructure on vmware environment with terraform

  - **Usage:**  

    To creates the infrastructure you can use:

    ```shell
    cd ./deploy
    cp -rf ./sample <YOUR MODULE>
    cp -rf ./modules/sample ./modules/<YOUR MODULE>

    export TF_VAR_provider_address=1.2.3.4
    export TF_VAR_provider_user=username
    export TF_VAR_provider_password=password
    ```

    **modules.tf**

    ```shell
    vim ./<YOUR MODULE>/modules.tf
    ```

    ```terraform

    module "<YOUR MODULE>" {
    source = "./modules/<YOUR MODULE>"

    vm_count      = "1"
    name_new_vm   = "sample-node"
    num_cpus      = "1"
    num_mem       = "512"
    size_disk     = "70"

    }
    ```

    ```shell
    terraform init
    terraform plan -out "<YOUR MODULE>.tfplan"
    terraform apply "<YOUR MODULE>.tfplan"
        ```

- [x] **Configure**  
    Configure the virtual machines with roles of ansible tool

  - **Usage:**  
    Configuration management of servers.

    ```shell
    cd ./configure
    cp -rf ./inventories/sample ./invetories/<YOU INVENTORY>
    ```

    Edit:

    Ex.

    ```yaml
    all:
        vars:
        hosts:
            host-1:
            ansible_host: 1.2.3.4
        children:
            servers:
            hosts:
                host-1:
    ```

    ```shell
    cd ./configure
    ansible-playbook -i ./invetories/<YOUR INVENTORY> -u <YOUR FOR ANSIBLE> -k servers.yml
    ```

    | Flags: | Description |
    | :--- | :--- |
    | -i | Set the inventory for execute playbook |
    | -u | User for execute ansible |
    | -k | Password for user to execute ansible |

    More info on documentation [ansible-playbook](https://docs.ansible.com/ansible/latest/cli/ansible-playbook.html).

## **Services**

The services to configure on your new vmware infrastructure

- [x] [**HAProxy**](./docs/haproxy.md)
- [x] [**Kubernetes**](./docs/kubernetes.md)
- [x] [**Elastic Stack**](./docs/elastic_stack.md)
- [x] [**Jenkins**](./docs/jenkins.md)
