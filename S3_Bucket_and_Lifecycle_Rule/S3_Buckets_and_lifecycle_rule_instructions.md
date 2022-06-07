How to Create S3 Buckets and implement a Life Cycle Policy

AWS offers numerous services for all types of cloud computing needs. One of the most used services that AWS offers is AWS Simple Storage System or simply S3. 
AWS S3 is an object storage service offered by AWS to store any type of data within resources entitled "buckets".

Once you create a bucket, you can choose from various Amazon S3 storage class options to store your bucket with the lowest cost possible. You can choose the storage class initially or you can implement a lifecycle policy which would transition your files and folders into a cheaper class in accordance with your policy. 

This story offers step by step instruction son how to create a bucket as well as how to implement a lifecycle policy.

-------

# PART 1 How to Create an S3 Bucket

1. Log in to your AWS Console and enter s3 on the search bar

2. Select S3 and proceeed to S3 service

3. The first thing you should do is to create a bucket. Because S3 stores files and folders in buckets. On the rightside of the page, click on "Create Bucket" to create your first bucket.

4. Give your bucket a unique name. Its like choosing an email addresses. If someone has taken a specific email address you can not take it. Same principle applies to bucket names.

5. Choose the region that you will create your bucket. Remember each region has different pricing.
You can check pricing by region by going to https://aws.amazon.com/s3/pricing/?nc1=h_ls

6. Next you decide about object ownership. If you want to keep the ownership of every object uploaded to your bucket either by your or someone else, you keep the Access Control List (ACLs) disabled.
However, if you want to give ownership to the account that uploads the files to your s3 bucket, then choose ACLs enabled.

7. By default, s3 blocks all public access to your buckets. It is an expected behavior. You own the bucket and only you can see the files.
However, what if you have a website and you store contencts of your website in your bucket? Than you need to grant public access so that your visitors can see your webpage.
For this tutorial,untick the "block all public access" part.

8. When you remove the block for public access, AWS wants you to acknowledge this. You will see a warning
"Turning off block all public access might result in this bucket and the objects within becoming public"
Just check the tick box, acknowledge, and continue.

9. Next part is bucket versioning. In versioning, whenever you make changes to your objects,S3 both keeps the updated object as newest version and the changed object (file or folder) as previous versions.

If you want, you can revert to previous state of the object by choosing your desired version.

So choose enable and continue.

10. Creating a tag is optional. For the sake of the tutorial, skip the tag and leave default encrytion as is (disabled). Than click on create bucket.

11. If you see the following message than: Congratulations! You have created your bucket!

12. You can see all your buckets under "Buckets" tab on the left side of S3 console.

13. Now that you have a bucket, it is time to see how you can add a file aka object to your bucket.

14. Select the bucket you just created and click on it.

15. Click on upload

16. Click on add files ( For uploading folders click on add folders)

17. Choose the files from your computer and when you see them listed on s3, click on upload once again.

18. If you are successfull, you will see your files, under Fles and Folders.

# PART2 S3 LIFECYCLE POLICY

AWS S3 offers different storage options for your storage needs. You can make your decision based on your needs for retrieval. AWS offers low pricing if you need to store your data but you do not need to retrive it so often. Therefore the lower the need for retrieval, the lower the cost. 

One way to lower storage costs is to create a lifecycle policy within S3 service. AWS inintiates the transition of your files between different storage classes based on your retrieval times.

Let's create a polcy to see how AWS S3 manages lifecycles.

1. Click on buckets, from the buckets tab on the left hand side of the s3 console.

2. Click on your bucket

3. Click on Management tab

4. Click on Create lifecycle rule

5. First, give a name for the rule.

6. Then choose a rule scope. If you want to limit the rule by using filters choose "Limit the rule using one or more filters"

There are three options for this selection. 
First, you can add a prefix as a filter. Prefix, in this context, can be considered a folder. Therefore only the objects within that prefix(folder) will be affected by the rule.
Second, you can add a tag and only objects with that tag will be effected by the rule.

Third option is to use object size by specifying either a minimum or a maximum size.

7. If you choose to apply the rule to all objects then choose "Apply to all objects in the bucket". In that case, you also need to acknowledge that by placing a tick into the proper field.

 You will be presented with five options to choose. Remember, these options are only available if you do not choose filtering.

8. You can specify the transition for each option. If you want to apply the rule to only to the current version of objects , just select the first option 
Then you can choose between storage classes. For example, if you select One Zone-IA and if you specify 30 days, than your obejcts will transition into the One Zone-IA after 30 days.
 
9. After you are done with the selections, review and click on "create rule".

10. Congratulations. You have created a lifecycle rule for your bucket.


1. Amazon S3 Standard (S3 Standard) 
Ideal for frequently accessed data

2. Amazon S3 Intelligent-Tiering (S3 Intelligent-Tiering)

3. Amazon S3 Standard-Infrequent Access (S3 Standard-IA)
ideal for data that is accessed less frequently, but requires rapid access when needed. Data stored in three zones.

4. Amazon S3 One Zone-Infrequent Access (S3 One Zone-IA)
ideal for data that is accessed less frequently, but requires rapid access when needed. Data stored in one zone

5. Amazon S3 Glacier Instant Retrieval

6. Amazon S3 Glacier Flexible Retrieval (Formerly S3 Glacier)

7. Amazon S3 Glacier Deep Archive
lowest cost storage option. ideal for data that you retrive once or twice a year.