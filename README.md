# Swiss Army Knife

## **Infrastructure**

- [x] **Deploy**  
    Creates the infrastructure on vmware environment with terraform

    - **Usage:**  

        To creates the infrastructure you can use:

        ```shell
        cp -rf sample <YOUR MODULE>

        export TF_VAR_provider_address=1.2.3.4
        export TF_VAR_provider_user=username
        export TF_VAR_provider_password=password
        ```

        **modules.tf**
        ```terraform
        
        # module "sample" {
        #   source = "./modules/sample"
        
        #   vm_count      = "1"
        #   name_new_vm   = "sample-node"
        #   num_cpus      = "1"
        #   num_mem       = "512"
        #   size_disk     = "70"

        # }
        
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
    Configure the an virtual machines with roles of ansible tool

## **Services**

The services to configure on your new vmware infrastructure

- [x] **HAProxy**
- [x] **Kubernetes**
- [x] **Elastic Stack**
- [x] **Jenkins**