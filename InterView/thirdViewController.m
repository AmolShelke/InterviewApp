//
//  thirdViewController.m
//  InterView
//
//  Created by Student P_04 on 31/03/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import "thirdViewController.h"

@interface thirdViewController ()

@end

@implementation thirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.myLabel setText:self.selques];
    [self.myLabel setTextColor:[UIColor greenColor]];
    [self.myLabel setFont:[UIFont systemFontOfSize:25]];
    [self.myView setText:@" "];
    self.myView.font=[UIFont systemFontOfSize:20];
    self.myView.editable=NO;
	//C

    if([self.selques isEqualToString:@"Why C is known as mother language?"])
    {
        [self.myView setText:@"C is known as mother language because most of the compilers,kernals and JVMs are written in C language. "];
    }
    else if([self.selques isEqualToString:@"why C is called a midlevel programming language?"])
    {
        [self.myView setText:@"It supports the features of both low level and high level languages that is why it is known as a mid level programming language. "];
    }
    else if([self.selques isEqualToString:@"What are the features of C language?"])
    {
        [self.myView setText:@"The main features of C language are given below:\n*Simple\n*Portable\n*Mid level\n*Structured\n*fast speed\n*Memory Management\n*Extensible "];
    }
    else if([self.selques isEqualToString:@"What is difference between local variable and global variable?"])
    {
        [self.myView setText:@"Local Variable:A variable which is declared inside functions or block is known as local variable.\nGlobal Variable:A variable which is declared outside function or block is known as global variable.\nint value=20;//global variable\nvoid fun()\n{\nint x=50;//local variable\n}"];
    }
    else if([self.selques isEqualToString:@"What is the use of static variable in C?"])
    {
        [self.myView setText:@"A variable which is declared as static is known as static variable.The static variable ratains its value between multiple function calls.\nvoid fun()\n{\nint x=10;//local variable\nstatic int y=10;//static variable\nx=x+1;\ny=y+1;\nprintf(""%d"",""x);//will always print 11\nprintf(""%d"",""y);//will always print incremented value 11,12,13 aand so on\n}"];
    }
    else if([self.selques isEqualToString:@"What is static memory allocation?"])
    {
        [self.myView setText:@"In case of static meomory allocation,memory is allocated at compile time and memory cant be increased while executing the program.it is used in array."];
    }
    else if([self.selques isEqualToString:@"What is Dyanamic memory allocation?"])
    {
        [self.myView setText:@"In case of dynamic meomory allocation,memory is allocated at run time and memory can be increased while executing the program.it is used in linked list.\nfunctions used in dynamic memory allocation\n1.malloc()\n2.calloc()\n3.relloc()\n4.free()"];
    }
    else if([self.selques isEqualToString:@"Write a program to print fibonacci series?"])
    {
        [self.myView setText:@"#include<stdio.h>\n#include<conio.h>\nvoid main()\n{\nint n1=0,n2=1,n3,i,number;\nprintf(""enter number of elements:"");\nscanf(""%d"",&number);\nprintf(""\n%d%d"",n1,n2);//printing 0 and 1\nfor(i=2;i<number;i++)\n{\n	n3=n1+n2;\n	printf(""%d"",n3);\n	n1=n2;\n	n2=n3;\n}\ngetch();\n""}"];
    }
    else if([self.selques isEqualToString:@"what is TypeCasting?"])
    {
        [self.myView setText:@"Converting one datatype into anather is known as typecasting.\nfor example:\n\nfloat f=3.14;\nint a=(int)f;"];
    }
    else if([self.selques isEqualToString:@"Who has Developed C?"])
    {
        [self.myView setText:@" Dennis Ritchie"];
    }

	//C++

	else if([self.selques isEqualToString:@"What is c++?"])
    {
        [self.myView setText:@"C++ is object oriented programming language,created by Bjarne stroustrup. release in 1985."];
    }
    else if([self.selques isEqualToString:@"Difference between C & C++?"])
    {
        [self.myView setText:@"C programming:\na)follows the procedural style programming.\nb)Data is less secure in C.\nc)follows top-down approach.\nd)not support function overloading.\ne)not support reference variable. \n\n C++:\na)support both procedural & object oriented.\nb)you can use modifier for class members to make it inaccessible for outside class.\nc)follows bottom-up approach.\nd)support function overloading.\ne)support reference variable."];
    }
    else if([self.selques isEqualToString:@"What is Encapsulation?"])
    {
        [self.myView setText:@"Encapsulation is a mechanism which binds the data and associated operations together & thus hide the data from outside world is also known as data hiding. "];
    }
	else if([self.selques isEqualToString:@"What is Abstraction?"])
    {
        [self.myView setText:@"Abstraction is used to hide the internal implementation & show only neccessary details to the outer world."];
    }
    else if([self.selques isEqualToString:@"What is Inheritance?"])
    {
        [self.myView setText:@"Inheritance is used to inherit the property of one class into anather class. it facilitates you to define one class in term of anather class."];
    }
    else if([self.selques isEqualToString:@"What is Polymorphism?"])
    {
        [self.myView setText:@"Polymorphism means the ability to take more than one form.An operation may exhibit different behaviour in different instances."];
    }
	else if([self.selques isEqualToString:@"What is Function Overloading?"])
    {
        [self.myView setText:@"defining several functions with the same name with unique list of parameters is called as function overloading."];
    }
    else if([self.selques isEqualToString:@"Fibonacci series using loop"])
    {
        [self.myView setText:@"#include<iostream.h>\n#include<conio.h>\nvoid main()\n{\n\tint i,no,first=0,seecond=1,next;\n\tcout<<""Enter number of terms for series:"";\n\tcin>>no;\n\tfor(i=0;i<no;i++)\n\t{\n\t\t	cout<<first;\n\t\t	next=first+second;\n\t\t	first=second;\n\t\t	second=next;\n\t}\n\tgetch();\n}"];
    }
    else if([self.selques isEqualToString:@"Define the Private,Protected and Public in C++?"])
    {
        [self.myView setText:@"Private:The data members and functions cannot be accessed from outside the class.\nProtected:The data members and functions are accessible to derived class only.\nPublic:The data members and functions can be accessed from outside the class. "];
    } 
    else if([self.selques isEqualToString:@"What is Constructor?"])
    {
        [self.myView setText:@"Constructor is a special method that initializes object.it name must be same as class name. "];
    }

	//HR

	else if([self.selques isEqualToString:@"Tell me about yourself?"])
    {
        [self.myView setText:@"This is the most famous question for an interviewer and also most difficult to answer this question for the candidate. This question puts all the pressure on the candidate and the interviewer relax.\n\nYou should alert enough to answer this question. You should start with an easy and confident tone and answer in proper manner.it should not be scripted.Always remember,you are giving interview to a robot so your articulation,your pronunciation of each words should be clear and confident.\n\nA good way:\n\nAnalyze your interviewer interests.\n\nFor example:\n\n""Good morning/afternoon/evening""\t""sir/mam.\nfirst of all thank you for giving me this opportunity to introduce myself.\n\nMy name is Amol shelke.\nAs far as my education\nqualification is concerned,I have done BE in Information Technology from Pune university in\nS.R.E.S COE kopargaon,in the year of 2016.\n\nI have completed my diploma from VIPC Sangamner.\n\nI have completed my schooling from J.E.S Kopargaon\n\nAbout my family I belong to a middle class family.My father is farmer.My Mother is housewife.\n\nI am good in programming languages C,C++ and Java and very much interested in HTML,CSS,ASP.Net and SQL."];
    }
    else if([self.selques isEqualToString:@"what are your strength?"])
    {
        [self.myView setText:@"You should always remember that even if your strength is not business related,find a way to relate it to work.Tell your positive points related to the job.\n\nFor example:\n\n*My main strengths are the ability to use my own initiative to take on challenges. I am always proactive at what i do and that keeps my mind simulated and focused.\n\n*My greatest strengths would be my intelligence and thoughtfulness.I believe that in every work environment you need to process every step and be detaild in your work.\n\n*i always understand the value of time and i am always able to innovate. i listen to advice from others.\n\n*Ability to focus on my work.I'm not easily distracted,and this means that my performance is very high."];
    }
	 else if([self.selques isEqualToString:@"what is difference between confidence & overconfidence?\n"])
    {
        [self.myView setText:@"confidence based on facts and knowledge and Overconfidence based on speculation.There is small difference between confidence and overconfidence .\nYes,I can do this work is self confidence.But only I can do this work is over confidence.\n\nOr you can say that-confidence is an internal believe that i am a right person for this job and OverConfidence is thought that i am only the right person for this job. "];
    }
    else if([self.selques isEqualToString:@"what is difference between smart work & hard work?"])
    {
        [self.myView setText:@"Smart work and hard work are related to each other.without being a hard worker we cant be a smart worker.smart work comes from the hard work.That means everyone has to specialize in his work to become a smart worker.So,all of us have to do hard work to achieve smart work.\n\nSo hard work increases your accuracy and smart work increases accuracy as well as efficiency."];
    }
	 else if([self.selques isEqualToString:@"what are your hobbies?"])
    {
        [self.myView setText:@"It is totally depends on you what you like and what hobbies do you have but always justify your answer."];
    }
    else if([self.selques isEqualToString:@"What are your salary expectations?"])
    {
        [self.myView setText:@"Dont ask your salary in exact numbers,instead of this show your commitment to the job itself.\n\nyou can say that-\n\nI am more interested in the role than the pay and I expect to be paid appropriate money for this role based on my experience."];
    }
	 else if([self.selques isEqualToString:@"Why should we hire you?"])
    {
        [self.myView setText:@"Tell your qualifications and highlight that points who makes you unique.\nThis may be a good answer(for freshers)-\n\nAs a fresher I need a platform to prove my ability.If I will be a part of your company I'II put my effort and strength to uplift your company.None is born with experience,if you hire me I will get professional experience through your company.\n\n(For experienced)\n\nI have good experience in that particular field(field of your specialization) and I think,I have an excel wiz now to work fast and efficient."];
    }
    else if([self.selques isEqualToString:@"Do you have any questions for me?"])
    {
        [self.myView setText:@"it's your turn now.If you get such an opportunity,you may ask question like that:\n\n""Thank you for giving me this opportunity.After my overall performance till now if I got selected what I need to improve and if I'm not selected how can i succeed further. can you give any advice sir?"];
    }
	 else if([self.selques isEqualToString:@"What is your favorite books?"])
    {
        [self.myView setText:@"This question is asked to judge your taste about reading books.The interviewer wants to know what types of book you like.Would you fit for the company culture?\n\nAnswer this question according to your sense,your knowledge about the book.Only named the books you have really read. you should choose something by a reputable author that your interviewer has probably heard of."];
    }
    else if([self.selques isEqualToString:@"What does success means to you?\n"])
    {
        [self.myView setText:@"If I feel I am making a difference working with a team of people to make a more profitable company.it is success for me.\n\nIf I put a smile on someone face and make him happy it is success for me."];
    }
	
//OBJECTIVE C

	else if([self.selques isEqualToString:@"Explain what objective-C program basically consists of?"])
    {
        [self.myView setText:@"Objective-C program basically consists of\n*Preprocessor commands\n*Interface\n*Implementation\n*Method\n*Variables\n*Statements & Expressions\n*Comments"];
    }
    else if([self.selques isEqualToString:@"Explain class definition in Objective-C?"])
    {
        [self.myView setText:@"A class definition begins with the keyword @interface followed by the interface (class) name,\nand the class body, closed by a pair of curly braces. In Objective-C, all classed are retrieved\nfrom the base class called NSObject. It gives basic methods like memory allocation and\ninitialization."];
    }
	 else if([self.selques isEqualToString:@"Mention what is the use of category in Objective-C?"])
    {
        [self.myView setText:@"The use of category in Objective-C is to extend an existing class by appending behavior that is\nuseful only in certain situations. In order to add such extension to existing classes, objective –C\nprovides extensions and categories. The syntax used to define a category is\n@interface keyword."];
    }
    else if([self.selques isEqualToString:@"Explain what are the characteristics of the category?"])
    {
        [self.myView setText:@"Characteristics of category includes\nEven if you don’t have the original source code for implementation, a category can be\ndeclared for any class\nAny methods that you define in a category will be available to all instances of the original\nclass as well as any sub-classes for the original class\nAt runtime, there is no variation between a method appended by a category and one\nthat is implemented by the original class"];
    }
	 else if([self.selques isEqualToString:@"Explain when to use NSArray and NSMutableArray?"])
    {
        [self.myView setText:@"NSArray: You will use an NS array when data in the array don’t change. For example,\nthe company name you will put in NS Array so that no one can manipulate it.\nNSMutableArray: This array will be used in an array, when data in an array will change.\nFor instance, if you are passing an array to function and that function will append some\nelements in that array then you will choose NSMutable Array."];
    }
    else if([self.selques isEqualToString:@"Explain what is synthesized in Objective-C?"])
    {
        [self.myView setText:@"Once you have declared the property in objective-C, you have to tell the compiler instantly by\n using synthesize directive. This will tell the compiler to generate a getter&setter message."];
    }
	 else if([self.selques isEqualToString:@"Mention whether NS object is a parent class or derived class?"])
    {
        [self.myView setText:@"NS object is the parent class and consists of a number of instance variables and instance methods."];
    }
    else if([self.selques isEqualToString:@"Explain what are objective- C blocks?"])
    {
        [self.myView setText:@"In Objective-C class, there is an object that combines data with related behavior. It enables you to form distinct segments of code that can be passed around to functions or methods as if they\nwere values. Objective-C blocks can be added to collections like NSDictionary or NSArray."];
    }
	
    else if([self.selques isEqualToString:@"Explain the difference between atomic and nonatomic synthesized properties?"])
    {
        [self.myView setText:@"Atomic and non-atomic refers to whether the setters getters for a property will atomically read and write values to the property. When the atomic keyword is used on a property, any access to it will be “synchronized”. Therefore a call to the getter will be guaranteed to return a valid value, however this does come with a small performance penalty. Hence in some situations nonatomic is used to provide faster access to a property, but there is a chance of a race condition causing the property to be nil under rare circumstances (when a value is being set from another thread and the old value was released from memory but the new value hasn’t yet been fully assigned to the location in memory for the property)"];
    }
	else if([self.selques isEqualToString:@"What is the reuseIdentifier used for?"])
    {
        [self.myView setText:@"The reuseIdentifier is used to indicate that a cell can be re-used in a UITableView. For example when the cell looks the same, but has different content. The UITableView will maintain an internal cache of UITableViewCell’s with the reuseIdentifier and allow them to be re-used when dequeueReusableCellWithIdentifier: is called. By re-using table cell’s the scroll performance of the tableview is better because new views do not need to be created."];
    }
  
	 else if([self.selques isEqualToString:@"Explain the difference between copy and retain?"])
    {
        [self.myView setText:@"Retaining an object means the retain count increases by one. This means the instance of the object will be kept in memory until it’s retain count drops to zero. The property will store a reference to this instance and will share the same instance with anyone else who retained it too. Copy means the object will be cloned with duplicate values. It is not shared with any one else."];
    }
    else if([self.selques isEqualToString:@"What is a category and when is it used?"])
    {
       
        [self.myView setText:@"A category is a way of adding additional methods to a class without extending it.\n It is often used to add a collection of related methods. A common use case is to add additional methods to built in classes in the Cocoa frameworks. For example adding async download methods to the UIImage class."];
    }
    else if([self.selques isEqualToString:@"What is the Responder Chain?"])
     {
     [self.myView setText:@"When an event happens in a view, for example a touch event, the view will fire the event to a chain of UIResponder objects associated with the UIView. The first UIResponder is the UIView itself, if it does not handle the event then it continues up the chain to until UIResponder handles the event. The chain will include UIViewControllers, parent UIViews and their associated UIViewControllers, if none of those handle the event then the UIWindow is asked if it can handle it and finally if that doesn't handle the event then the UIApplicationDelegate is asked.\nIf you get the opportunity to draw this one out, it's worth doing to impress the interviewer:"];
     }
    

    else if([self.selques isEqualToString:@"What is the difference between viewDidLoad and viewDidAppear? Which should you use to load data from a remote server to display in the view?"])
    {
        [self.myView setText:@"viewDidLoad is called when the view is loaded, whether from a Xib file, storyboard or programmatically created in loadView. viewDidAppear is called every time the view is presented on the device. Which to use depends on the use case for your data. If the data is fairly static and not likely to change then it can be loaded in viewDidLoad and cached. However if the data changes regularly then using viewDidAppear to load it is better. In both situations, the data should be loaded asynchronously on a background thread to avoid blocking the UI."];
    }
    else
    {
        [self.myView setText:@"Sorry"];
    }
 }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
@end
