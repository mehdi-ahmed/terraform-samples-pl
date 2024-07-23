- Chapter 1, 2, 3: Theory
- chapter 4: Using Input Variables and Outputs
- chapter 5: Updating project. Creating a new tf file for Load Balancer, EC2 instances. Renaming main.tf to network.tf
  - (code Did not work - need further investigations)
- Chapter 6: 



## Providers

This course uses the AWS and Random providers. At the start of the course, we are not specifying a particular version of the AWS provider, meaning Terraform will grab the latest version. The **day** after I finished the course, version `5.0` of the AWS provider was released 😔. So while you will see version `4.X` in the course video, when you initialize your configuration for the first time, you will get version `5.X`. They are no breaking changes in the AWS provider between `4.X` and `5.X` that impact the example code, so it *should* all work as expected, with one minor exception.

In module 6, we add the Random provider and specify required versions for both providers, setting the AWS provider to use major version 4. In the videos, I am already using major version 4, so Terraform didn't have a problem with adding the version constraint and running `terraform init`. However, you will be using major version 5 of the provider, and the addition of the version constraint will mean Terraform has to download a different version of the provider and update the lock file. When you run `terraform init`, you will get an error message indicating that your version constraints have changed and you need to run `terraform init -upgrade` to update the lock file. You can safely run this command and everything will work as expected.

I admit the `-upgrade` switch is a little misleading, as it implies that you are moving to a newer version of the provider, when in reality you're moving down a major version. I wish the command was something else, like `terraform init -update` or something. But alas, it is what it is.

## AWS Environment

You will need access to an AWS environment with permissions to create resources in EC2, S3, and IAM. I recommend creating a dedicated account just for this course. The exercises have been tested with AWS region `us-east-1`. The input variable `aws_region` has `us-east-1` set as the default, but you can supply a different region if you prefer. Generally, the exercises should work in any region that has at least three availability zones and an Amazon Linux 2 AMI.

You will need to generate an AWS access key to run through the exercises. You can do this through the IAM console in a browser (*hint*: it's under security credentials for your user) by following the [official AWS docs](https://aws.amazon.com/premiumsupport/knowledge-center/create-access-key/). I'd recommend assigning the `AdministratorAccess` policy to your user to give you permissions to do everything in the account. Also, enable 2FA for the user account!