# Write-up Template

### Analyze, choose, and justify the appropriate resource option for deploying the app.

*For **both** a VM or App Service solution for the CMS app:*

Virtual machine (VM)
- *Analyze costs
  - VMs cost higher because you have to pay for compute, storage, and networking resources while app services are pay-as-you-go pricing, making it cheaper for small to medium workloads.

- *scalability
  - VMs scaling is manual and scaling require a load balancer and operational effort while app services can be autoscaled based on CPU, memory, schedule with zero downtime and they are easy to scale up without manual intervention
  
-  *availability, 
   -  VMs require configuration of availability Sets or Zero for redundancy while app services are have high availability built-in in azure infrastructure.
   -  
-  *workflow
   -  VMs allows for ful control over OS and the environment while App services have no need to manage OS or runtime updates
  

- *Choose the appropriate solution (VM or App Service) for deploying the app*
- *Justify your choice*
 I choose Azure app service because it offers several advantages over VMs in terms of its ability offer built-in scalability and high availability without operational overhead of managing VMs. It provides seamless integration with GitHub Actions for CI/CD. App service also supports Python natively, and reduces cost through the pay-as-you-go model

### Assess app changes that would change your decision.

*Detail how the app and any other needs would have to change for you to change your decision in the last section.* 

-- The current CMS app is lightweight, uses python and thus, app services is the best fit for it.
However, I would consider and choose a VM for the reasons below;
 - If the app needed a non-standard operation system, or a software that app Service does not support, a Vm would be necessary for full control.
 - If the app required advanced networking configurations (e.g., custom firewalls, VPNs, private IP addressing) or compliance that mandates full control over the environment, a VM would be more suitable.
 - The CMS app grew to require a GPU, large processing or performance computing workload, App service will not be the best option
 - The organization wants complete control over the app for internal compliance on monitoring, scaling, etc., a VM will be the preferred choice.