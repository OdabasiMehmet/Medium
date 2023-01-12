# How to pass CKA (Certified Kubernetes Administrator) Exam

I passed the CKA exam in December,2022 in my first attempt and have received many questions with regards to exam preparation. Instead of answering questions one by one, I decided to share my experience through a medium story. I hope that it will help you pass the exam in your first attempt.

CKA certificate is offered by Linux Foundation and is considered one of the top certificates in the DevOps field. Unlike many other exams that are composed of Multiple Choice questions, CKA is solely a task based exam. There are no test questions, no options to choose from, no fill in the blanks. You are provided with an infrastructure and you will be asked to complete tasks within that infrastructure. Therefore, you really need to know what you are doing in order to pass the exam. 

# Kubernetes Course

First of all, if you are new to Kubernetes, Docker or container technology, do not rush into the exam directly. Master the basics first and try to understand how Kubernetes work. There are many courses to choose from in terms of Kubernetes basics. You can choose courses from Udemy or Coursera as well as Linkedin Learning. You might as well enroll in a bootcamp. All of them works just fine to learn the basics.

# CKA Course
Once you are good with the basics, I recommend you to take Mumshad Mannambeth's Udemy Course (https://kodekloud.com/courses/certified-kubernetes-administrator-cka/). I took the course and really benefited from it. In addition to the content, the course provides free lab sessions on KodeKloud platform which is very similar to the CKA exam environment. So,you will have lots of hands on experince before the exam. The course also offers mock exams.

# KillerKoda

Also, you must definitely check out killerkoda website. Killerkoda is free to use and the website offers interactive environments with multiple scenarios. You can log in, choose CKA, work on a scenario and restart it as many times as you want until you master the subjects.
KillerKoda also has a Kubernetes playground. You are not limited to work only the scenarios. You can simply log in to the CKA playground and play with creating and managing Kubernetes objects. (https://killercoda.com/killer-shell-cka)

# killer.sh

Finally, when you register for the exam, you are provided with two sessions of killer.sh exam simulator.
1. The sessions are accessible for 36 hours each (36+36).
2. Start the simulator around noon, so that you will have a chance to work until the following night.
3. Once you start the simulator, you will have 36 hours to utilize the exam simulator. You can restart as many times as you can, but my advice to you is to act as if you are taking the real exam and try to finish it in two hours. After two hours, check your work and grade to see how you do. Then check for solutions, compare your work and understand which subjects you must improve.
4. killer.sh exams are way more difficult than the actual exams. So, if you fail to get a good grade in your first attempt, do not panic.
5. Restart the exam simulator and try to finish more tasks in the required timeframe than your first attempt.
6. Make sure, that you do the full exam at least three times.
7. Do not immediately take the second session unless your real exam is due in three days. If there will be a time gap, you may get rusty, so schedule the second session within three days of the exams date. If you start at noon again, you can finish your 36 hours the day before the exam.
8. The second session offers the same tasks so do not expect different tasks. But in essence, once you understand how to do a task, you can easily manage similar tasks.

# Registering for the exam
Exams are managed through Linux Foundation training website (https://training.linuxfoundation.org/certification/certified-kubernetes-administrator-cka/). The regular price of the exam is $395. If you want to include the CKA course from the Linux Foundation, the total cost goes up to $595.
Linux Foundations offer discounts throughout the year. Just check for special discount times, like Black Friday and Cyber Monday. I managed to get both the CKA exam and the CKA course for a total of $208 during CyberMonday of 2022.

# What to Focus

1. Documentation: CKA exam consists of 17-20 tasks on various topics.  You are allowed to use Kubernetes documentation during the exam. However, don't let this convenience fool you. Time is of great essence during the exam. So, you will not have time to search through the documentation pages. Therefore, get familiar with the documentation well before the exam and know where to find what during the exam.

2. Imperative commands: Normally, I prefer declarative commands because it helps documenting the work I do. However, you will need to write most of the commands using imperative commands during the exam because of the time constraints. You should be able to create all the objects that can be created imperatively by using kubectl commands. However, not everything can be created imperatively, such as persistent volumes. Learn which objects require imperative/declarative methods.

3. Using --dry-run=client - o yaml: Many tasks require creating objects with multiple features and some of those features can not be entered imperatively. For example, you can create a pod with one container imperatively, but you can not create a multi-container pod. What you can do is to enter the kubectl command for creating a single pod but instead of executing the command directly you can add `--dry-run=client - o yaml` to create a manifest file. I explained how dry-run works here. https://medium.com/@mehmetodabashi/creating-kubernetes-objects-with-dry-run-96d76b0488a

4. Cheat Sheet: Kubernetes documentation page offers a cheat sheet for many kubectl commands. You can find many commands there and knowing which commands are included in the cheat sheet will speed you up when searching commands during the exam. And yes you are allowed to use it during the exam.

5. Use -h option to get help: For many imperative commands, the -h option provides sample commands. For example, instead of going to documentation, you can simply enter `kubectl create role -h` to retrieve sample commands. This will speed you up.

6. Learn, how to forcefully edit objects using `kubectl replace --force`.

7. Learn json-path query: You should be able to comfortably apply json-path queries during the exam. Kubernetes documentation offers example queries (https://kubernetes.io/docs/reference/kubectl/jsonpath/). You can also learn jsonpath from KodeKloud's free course. (https://kodekloud.com/courses/json-path-quiz/)

8. Learn how to do troubleshooting. Learn where to find logs for containers and pods in terms of file structure (/var/log/containers) and in terms of` applying commands (crictl, journactl etc.).

9. Practice using Vim. Exam environment doe not provide IDEs, like VSCode.

Practice as much as you can. This is the only way to learn and speed up your pace. 

# Environment for the Exam:`

CKA  is proctored by PSI. They have a set of requirements that you will need to fulfill.

1. First of all, you will need to download a PSI browser before the exam. You will need to close all other programs in order to continue to the exam. But do not worry, if you forget to close all the programs, the browser warns you about running programs and there appears an option to automatically shut them down.

2. You will need a camera that shows your ID clearly. I bought a new hd webcam before the exam. It showed everything crystal clear, however, it did not have autofocus option and the proctor could not read my name from my ID card. I had to log off and restart everything with my laptop built-in camera. The video stream was average but it showed the id clearly. So, my advice is do not go after a fancy camera to show yourself with hd streaming. Just stick to what works best for the job which is to show your name clearly to the proctor.However, bear in mind that the proctor will ask you to pan around your room, under your desk etc. So, if you will use your laptop, ensure that you can move it around to show your room.

3. You can have only one monitor during the exam. You can use your laptop with an external monitor, but you need to disable your laptop screen. You can have only one monitor.

4. Make sure that you have good connectivity. I lost connectivity during the last 30 minutes( My connection was good but the browser disconnected somehow). I immediately started the browser again but I had to redo all the screening as if I was just starting the exam (id check, room check etc.). It took me 1 minute to log back into the browser but 25 minutes to connect to a new proctor, get past the screening and access the exam environment. The timer for the exam did not stop, so I had 5 minutes left to finish the exam. Despite that, I managed to pass the exam with a good grade because I did the exam simulator so many times I became really fast.


# Final note: 
Do not worry about creating alias for kubectl or kubectl autocomplete. They are already in the exam environment.
Do not spend time preparing bookmarks for your browser because you are not allowed to sue your own browser. You can only use the Firefox browser within the exam environment.
Also, you will be provided with a context for each task. But you will also be provided with the command to use that context. You just need to copy the context command and paste it to the terminal.
Finally, no matter what hapen do not panic !

Good luck!