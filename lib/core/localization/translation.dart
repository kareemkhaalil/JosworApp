import 'package:Joswor/core/contstant/fonts.dart';
import 'package:get/get.dart';

class MyTranslation extends Translations {
  int? min;
  int? max;
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          // Language Choosing
          'title': 'Choose your language',
          // Login Screen
          'login': 'Sign in',
          'loginWelcome': 'Welcome back',
          'loginDesc': 'Sign in with your email and password ',
          'email': 'Email',
          'password': 'Password',
          'hintEmail': 'Enter your email',
          'hintPassword': 'Enter your password',
          'forgotPassword': 'Forgot password ?',
          'dontHaveAccount': 'Don\'t have an account ?',
          'loginErrorTitle': 'Login Error',
          'loginError': 'Email or password is incorrect',
          // Font Family

          'fontFamily': '${AppFonts().english}',
          // OnBoarding Screen
          'onBoardingTitle1': 'Different Experience',
          'onBoardingTitle2': 'Applying Became Easy',
          'onBoardingTitle3': 'For You',
          'onBoardingSignIn': 'Sign In',
          'onBoardingSignUp': 'Sign Up',
          'Continue': 'Continue',
          // SignUp Screen
          'signUp': 'Sign up',
          'signUpWelcome': 'Welcome',
          'signUpDesc': 'Sign up with your email and password ',
          'alreadyHaveAccount': 'Already have an account ?',
          'hintName': 'Enter your name',
          'hintPhone': 'Enter your phone',
          'name': 'Name',
          'phone': 'Phone',
          'signUpError': 'Phone or Email already exist',
          'signnUpErrorTitle': 'Sign Up Error',
          // forgot password screen
          'forgotPasswordTitle': 'Forgot Password',

          'forgotPasswordDesc':
              'Enter your email address below to receive a password reset link',
          'hintForgotPassword': 'Enter your email',
          'send': 'Send',
          'forgotPasswordErrorTitle': 'Forgot Password Error',
          'forgotPasswordErrorDesc': 'Email is not exist',

          // reset password screen
          'resetPassword': 'Reset Password',
          'resetPasswordDesc':
              'Enter your new password below to reset your password',
          'hintResetPassword': 'Enter your new password',
          'confirmPassword': 'Confirm Password',
          'hintConfirmPassword': 'Enter your confirm password',
          'reset': 'Reset',
          'passwordNotMatchTitle': 'Reset Password Error',
          'passwordNotMatch': 'Password and confirm password not match',
          'resetPasswordError': 'Try again later',
          // success reset password screen
          'successResetPassword': 'Success Reset Password',
          'buttonSuccessResetPassword': 'Back to Login',

          // verify screen
          'verify': 'Verify',
          'verifyDesc':
              'Enter the 6 digit code sent to your email address to verify your account',
          'hintVerify': 'Enter your code',
          'resend': 'Resend',
          'verifyCode': 'Verify Code',
          'verifyCodeError': 'Code is not correct',
          // success SignUp screen
          'successSignUp': 'Success Sign Up',
          // validation messages
          'notValidEmail': 'Not Valid Email',
          'notValidPassword': 'Not Valid Password',
          'notValidName': 'Not Valid Username',
          'notValidPhone': 'Not Valid Phone',
          'notValid${min}Length': 'value can\'t be less than $min characters',
          'notValid${max}Length': 'value can\'t be more than $max characters',
          'notValidEmpty': 'value can\'t be empty',
          // alert messages
          'alertExitAppTitle': 'Exit App',
          'alertExitAppDesc': 'Do you want to exit the app ?',
          'alertExitAppYes': 'Yes',
          'alertExitAppNo': 'No',
          // home screen
          'explore': 'Explore',
          'university': 'University',
          'seemore': 'See More',
          'specialoffers': 'Special Offers',
          'articles': 'Articles',
          // Nav
          'home': 'Home',
          'offers': 'Offers',
          'universities': 'Universities',
          'submission': 'Submission',
          'articles': 'Articles',
          'about': 'About Us',
          'joswor': 'Joswor',
          //Submission
          'fullname': 'Full Name',
          'email': 'Email Address',
          'phone': 'Phone Number',
          'date': 'Date of Birth',
          'nationality': 'Nationality',
          'country': 'Country of Residence',
          'degree': 'Degree Level',
          'percentage': 'Percentage of Marks',
          'photo': 'Personal Photo ',
          'passport': 'Passport',
          'transcript': 'Transcript ',
          'note': 'Notes',
          'hintFullname': 'Enter your full name',
          'hintEmailAdd': 'Enter your email address',
          'hintPhoneNum': 'Enter your phone number',
          'hintDate': 'Enter your date of birth',
          'hintNationality': 'Enter yout Nationality',
          'hintCountry': 'Enter your country of residence',
          'hintDegree': 'Enter your degree level',
          'aboutUsContent':
              'Joswor International Group is a full-service advisory group that focuses on business consulting, educational and university services, and businessmen services over the years of distinguished presence in many countries such as Turkey, Turkish Cyprus, Saudi Arabia, and Egypt. Because we firmly believe in the virtue of science and learning, and because we look forward to a promising future in which the rising generations will play a pioneering role in the nation\'s renaissance at all levels. Where our journey began in 2014 AD, and the idea was established in order to achieve the dream of international students to enroll in the best and strongest international universities; Our team is highly qualified and most importantly with more than 10 years of experience, our consultants have enough experience in the field of study abroad and we also provide them with periodic internships in order to adjust their knowledge and keep them up to date with the latest changes. Jusoor International Group provides integrated and reliable services and the group seeks to be on the list of international companies in the field of investment and educational services in a strategic partnership towards a bright future. It is the first group to prioritize helping foreign students in general and Arab students in particular by providing academic facilities and exceptional study discounts for students wishing to study abroad, and we strive to create opportunities for those who have real ambition and sincere intentions in facilitating tuition fees, student services, qualifications and career prospects after qualification. . Jusoor International has several branches in the Arab world, and we have a wide network of more than 225 agents in all countries of the world.',
          'ourMission':
              'To be a bridge across cultures and to support the academic pursuit of the rising generation is our mission.',
          'ourMessage':
              'We believe that education is a fundamental right and that everyone should have access to a high-quality education, so our experienced education consultants are ready to advise students about courses, educational opportunities, interests, aptitude, and aspirations. We have an extensive network with education consultants, and we are able to propose a wide range of study options and programs to meet the needs of students, secure their university admissions in Turkish universities and international universities, and support and assist the student until he finishes his studies.',
          'ourVision':
              'Enabling the student to study in international universities, which constitutes an important step in the student\'s future. We help the student to obtain the best level of education while providing an appropriate environment conducive to excellence and creativity. We always strive to maintain our prestigious position in the field of student and educational services and to maintain and develop the quality of service provided to students.',
          'whyUs':
              '1 .  Honesty and credibility: the most important criterion because our reputation is above everything in terms of importance. \n 2 . Expertise and Experience: We put in your hands a summary of what we have gained over the years. \n 3 . Professionalism: We strive to perform at the highest possible level and not just get our work done. \n 4 . Commitment: Our internal monitoring system is a guarantee for you and us. \n 5 . Distinguished Relationships: We support our students through our strong relationships with universities. \n 6 . Continuous development: We continue to develop to be the best.',
          'mission': 'Our Mission',
          'message': 'Our Message',
          'vision': 'Our Vision',
          'why': 'Why Joswor',
          'submit': 'Submit',
          'sinop': 'Sinop University',
          'yildiz': 'Yildiz Technical University',
          'istanbul': 'Istanbul Technical University',
          'bilkent': 'Bilkent University',
          'istanbul': 'Istanbul University',
          'usak': 'Usak University',
          'randomContent':
              'It is one of the public public universities, which is located in the Turkish east in the city of Van. The university was founded on July 20 of the year 1982, where the idea of ​​implementation in the Turkish east began during the era of Ataturk’s presidency, who was sent in the year 1927 by the Minister of Education and Higher Education, Mr. Mustafa Necati, and after his visit The city of Van first stressed the need to establish a university in this city, and in the year 1951 a committee of 15 people was established, headed by Professor Dr. Effat Annan, to determine the location of the university to start preliminary studies, and the university was officially established on July 20, 1982. \nProfessor Bayami Battal and his assistants, Professor Murat Demiral, Professor Ahmed Kazan Kaya, and Professor Ahmed Faik Onyer, and after that the university began to grow continuously. The university currently includes in its organizational structure 14 colleges, 4 institutes, 11 institutes of higher education, and 19 centers for research and applications. \nThe university was established next to the famous Van Navy, and the university campus is only 15 kilometers from the city center. The university teaches in both Turkish and English, and the number of students in the university is more than 30,000 thousand students, and because of the earthquake that the city was exposed to in 2011, studies were disrupted in The university for a period and ended the 2011/2012 semester with great difficulty, even the Faculty of Medicine, which was scheduled to open at the beginning of the academic year 2012/2013, was postponed to October 30 in 2012.',
        },
        'ar': {
          // Language Choosing
          'title': 'اخــتــر لــغــتــك',
          // Login Screen
          'login': 'تـسجيـل الـدخـول',
          'loginWelcome': 'مـرحـبـا بـعـودتـك ',
          'loginDesc': 'سجل دخولك \n بالبريد الإلكتروني وكلمة المرور ',
          'email': 'البريد الإلكتروني',
          'password': 'كلمة المرور',
          'hintEmail': 'أدخل بريدك الإلكتروني',
          'hintPassword': 'أدخل كلمة المرور',
          'forgotPassword': 'نسيت كلمة المرور؟',
          'dontHaveAccount': 'ليس لديك حساب؟',
          'loginError': 'البريد الإلكتروني أو كلمة المرور غير صحيحة',
          'loginErrorTitle': 'خطأ في تسجيل الدخول',
          // Font Family
          'fontFamily': '${AppFonts().arabic}',
          // OnBoarding Screen
          'onBoardingTitle1': 'تــجــربــة مـخـتـلـفـة',
          'onBoardingTitle2': 'الــتقــديــم أصبــح أســهــل',
          'onBoardingTitle3': 'مــن أجــلك',
          'onBoardingSignIn': 'تسجيل الدخول',
          'onBoardingSignUp': 'إنشاء حساب',
          'Continue': 'استمـر',
          // register screen
          'signUp': 'إنـشـاء حـسـاب',
          'signUpWelcome': 'مـرحـبـا بـك',
          'signUpDesc': 'إنشئ حسابك \nبالبريد الإلكتروني وكلمة المرور ',
          'alreadyHaveAccount': 'لديك حساب؟',
          'hintName': 'أدخل اسمك',
          'hintPhone': 'أدخل رقم هاتفك',
          'name': 'الاسم',
          'phone': 'رقم الهاتف',
          'signUpErrorDesc': 'رقم الهاتف أو البريد الإلكتروني موجود مسبقا',
          'signUpErrorTitle': 'خطأ',
          // forgot password screen
          'forgotPasswordTitle': 'نسيت كلمة المرور',
          'forgotPasswordDesc':
              'أدخل بريدك الإلكتروني وسنرسل لك رابطًا لإعادة تعيين كلمة المرور',
          'hintForgotPassword': 'أدخل بريدك الإلكتروني',
          'send': 'إرســال',
          'forgotPasswordErrorTitle': 'خطأ',

          'forgotPasswordErrorDesc': 'البريد الإلكتروني غير موجود',

          // reset password screen
          'reset': 'إعادة تعيين',
          'resetPassword': 'إعادة تعيين كلمة المرور',
          'hintResetPassword': 'أدخل كلمة المرور الجديدة',
          'resetPasswordDesc':
              'أدخل كلمة المرور الجديدة وتأكيد كلمة المرور الجديدة',
          'confirmPassword': 'تأكيد كلمة المرور',
          'hintConfirmPassword': 'أدخل كلمة المرور مرة أخرى ',
          'passwordNotMatchTitle': 'خطأ',
          'passwordNotMatch': 'كلمة المرور غير متطابقة',
          'resetPasswordError': 'حاول مرة أخرى',
          // success reset password screen
          'successResetPassword': 'تم إعادة تعيين كلمة المرور بنجاح',
          'buttonSuccessResetPassword': 'العودة لتسجيل الدخول',
          // verify screen
          'verify': 'تأكيد الحساب',
          'verifyDesc': 'أدخل رمز التحقق الذي تم إرساله إلى رقم هاتفك المحمول',
          'hintVerify': 'أدخل رمز التحقق',
          'resend': 'إعادة إرسال',
          'verifyCode': 'رمز التحقق',
          'verifyCodeError': 'رمز التحقق غير صحيح',
          // check Email screen
          'checkEmail': 'تحقق من بريدك الإلكتروني',
          'checkEmailDesc':
              'تم إرسال رابط إعادة تعيين كلمة المرور إلى بريدك الإلكتروني',
          // success SignUp screen
          'successSignUp': 'تم إنشاء حسابك بنجاح',
          // validation messages
          'notValidEmail': 'البريد الإلكتروني غير صالح',
          'notValidPassword': 'كلمة المرور غير صالحة',
          'notValidName': 'اسم المستخدم غير صالح',
          'notValidPhone': 'رقم الهاتف غير صالح',
          'notValidMinLength': 'لا يمكن أن تكون القيمة أقل من 5 حرف',
          'notValidMaxLength': 'لا يمكن أن تكون القيمة أكثر من 30 حرف',
          'notValidEmpty': 'لا يمكن أن تكون القيمة فارغة',
          // alert messages
          'alertExitAppTitle': 'الخروج من التطبيق',
          'alertExitAppDesc': 'هل أنت متأكد من أنك تريد الخروج من التطبيق؟',
          'alertExitAppYes': 'نعم',
          'alertExitAppNo': 'لا',
          // home screen
          'explore': 'تصفح',
          'university': 'الجامعات',
          'seemore': 'تصفح المزيد',
          'specialoffers': 'عروض خاصة',
          'articles': 'مقالات',
          // Nav
          'home': 'الرئيسية',
          'offers': 'العروض',
          'universities': 'الجامعات',
          'submission': 'التقديم',
          'articles': 'مقالات',
          'about': 'من نحن ',
          'joswor': 'جـــســـور',
          // Submission
          'fullname': 'الاسم بالكامل',
          'email': 'البريد الالكتروني',
          'phone': 'رقم الهاتف',
          'date': 'تاريخ الميلاد',
          'nationality': 'الجنسية',
          'country': 'الدولة',
          'degree': 'الدرجة العلمية',
          'percentage': 'النسبة المئوية',
          'photo': 'صورة شخصية',
          'passport': 'صورة جواز السفر',
          'transcript': 'صورة الشهادة',
          'note': 'ملاحظات',
          'hintFullname': 'أدخل الاسم بالكامل',
          'hintEmailAdd': 'أدخل البريد الالكتروني',
          'hintPhoneNum': 'أدخل رقم الهاتف',
          'hintDate': 'أدخل تاريخ الميلاد',
          'hintNationality': 'أدخل الجنسية',
          'hintCountry': 'أدخل الدولة',
          'hintDegree': 'أدخل الدرجة العلمية',
          'aboutUsContent':
              'مجموعة جسور الدولية هي مجموعة استشارية متكاملة الخدمات تركز على استشارات الأعمال والخدمات التعليمية والجامعية وخدمات رجال الأعمال على مدار سنين من التواجد المتميز في العديد من البلدان مثل تركيا، قبرص التركية، المملكة العربية السعودية، مصر. لأنّنا نؤمن إيماناً راسخاً بفضل العلم والتعلّم، ولأنّنا نستشرف مستقبلاً واعداً تلعب فيه الأجيال الصّاعدة دوراً رائداً في نهضة الأمّة على المستويات كافّة. حيث بدأت مسيرتنا منذ عام 2014 م وقد قامت الفكرة من أجل تحقيق حلم الطلاب الدوليين للإلتحاق بأفضل وأقوى الجامعات الدولية؛ ففريقنا من أصحاب الكفاءات العالية والأهم من ذلك هم أصحاب خبرة تصل إلى أكثر من 10 سنوات، ويتمتع مستشارونا بخبرة كافية في مجال الدراسة في الخارج، كما نوفر لهم تدريبًا داخليًا دوريًا من أجل ضبط معارفهم وإبقائهم على اطلاع بأحدث التغييرات. مجموعة جسور الدولية تقوم بتقديم خدمات متكاملة وموثوق بها وتسعى المجموعة إلى أن تكون على قائمة الشركات العالمية في مجال الاستثمار والخدمات التعليمية بشراكة استراتيجية نحو مستقبل مشرق. وهي أول مجموعة تضع في أولوياتها مساعدة الطلاب الأجانب بصفة عامة والطلاب العرب بصفة خاصة عبر تقديم تسهيلات أكاديمية وخصومات دراسية استثنائية للطلاب الراغبين بالدراسة في الخارج، ونسعى جاهدين لخلق الفرص لأولئك الذين لديهم طموح حقيقي ونوايا صادقة في تسهيل الرسوم الدراسية والخدمات الطلابية والمؤهلات والآفاق الوظيفية بعد التأهيل. وتمتلك جسور الدولية عدة فروع في الوطن العربي، كما أن لدينا شبكة واسعة من أكثر من 225 وكيل في كافة بلاد العالم.',
          'ourMission':
              'أن نكون جسراً عبر الثقافات ودعم السعي الأكاديمي للجيل الصاعد هي مهمتنا.',
          'ourMessage':
              'نحن نؤمن بأن التعليم حق أساسي ويجب أن يحصل الجميع على تعليم عالي الجودة، لذا فإن مستشاري التعليم ذوي الخبرة لدينا مستعدون لتقديم المشورة للطلاب حول الدورات والفرص التعليمية، والمصالح، والكفاءة، والطموحات. لدينا شبكة واسعة مع مستشاري التعليم، ونحن قادرون على اقتراح مجموعة واسعة من خيارات الدراسة والبرامج لتلبية احتياجات الطلاب، وتأمين قبولاتهم الجامعية في الجامعات التركية والجامعات الدولية ودعم الطالب ومساعدته حتى ينتهي من دراسته.',
          'ourVision':
              'تمكين الطالب من الدراسة في الجامعات الدولية والتي تشكل خطوة هامة في مستقبل الطالب. نحن نمد يد المساعدة للطالب للحصول على أفضل مستوي تعليم مع توفير بيئة مناسبة تعين على التميز والابداع. ونسعى دائما للحفاظ على مكانتنا المرموقة في مجال الخدمات الطلابية والتعليمية والحفاظ علي جودة الخدمة المقدمة للطالب وتطويرها.',
          'whyUs':
              '  1 . الأمانة والمصداقية: المعيار الأهم لأن سمعتنا تفوق كل شيء من حيث الأهمية. \n 2 . الخبرة والتجربة: نضع بين يديك خلاصة ما اكتسبناه لسنوات. \n 3 . الاحترافية: نسعى لأن نؤدي أعلى مستوى ممكن ولا نكتفي فقط بإنجاز عملنا. \n 4 . الالتزام: نظام المتابعة الداخلية لدينا هو ضمان لنا ولك. \n 5 . العلاقات المميزة: نساند طلابنا من خلال علاقاتنا القوية مع الجامعات. \n 6 . التطوير المستمر: نستمر بالتطوير لنكون الأفضل.',
          'mission': 'مهمتنا',
          'message': 'رسالتنا',
          'vision': 'رؤيتنا',
          'why': 'لماذا جسور ؟ ',
          'submit': 'إرسال',
          'sinop': 'جامعة سينوب',
          'yildiz': 'جامعة يلدز التقنية',
          'istanbul': 'جامعة اسطنبول التقنية',
          'bilkent': 'جامعة بيلكنت ',
          'istanbul': 'جامعة اسطنبول',
          'usak': 'جامعة أوساك',
          'randomContent':
              'هي احدى الجامعات الحكومية العامة والتي تقع في الشرق التركي في مدينة فان , تأسست الجامعة في 20 تموز من عام 1982 , حيث بدأت فكرة التنفيذ في الشرق التركي في عهد رئاسة اتاتورك الذي ارسل في سنة 1927 وزير التربية والتعليم العالي السيد مصطفى نجاتي , وبعد زيارته لمدينة فان اولى بضرورة تاسيس جامعة في هذه المدينة , وفي سنة 1951 تم تأسيس هيئة من 15 شخصا برئاسة البروفسور الدكتور عفت انان لتحديد مكان الجامعة بالبدء بالدراسات الاولية , وتم تأسيس الجامعة بشكل رسمي في 20 تموز عام 1982 . \n يشغل منصب رئيس الجامعة الدكتور البروفسور بييامي بطال ومساعديه الدكتور البروفسور مراد دميرال والدكتور البروفسور احمد كازان كايا والدكتور البروفسور احمد فائق اونيير , وبعدها بدأت الجامعة بالنمو المستمر . \n تضم الجامعة حاليا في هيكلها التنظيمي 14 كلية و 4 معاهد و 11 معهد تعليم عالي و 19 مركز للابحاث والتطبيقات . \n تأسست الجامعة بجوار بحرية فان الشهيرة والحرم الجامعي لا يبعد سوى مسافة 15 كيلو متر عن مركز المدينة , تدرس الجامعة باللغتين التركية والانكليزية , ويبلغ تعداد الطلبة في الجامعة اكثر من 30.000 الف طالب وطالبة , وبسبب الزلزال الذي تعرضت له المدينة عام 2011 تعطلت الدراسة في الجامعة لفترة وانهت الفصل الدراسي 2011 / 2012 بصعوبة كبيرة , حتى كلية الطب التي كان من المقرر ان تفتتح في بداية العام الدراسي 2012/ 2013 تم تأجيلها الى 30 اكتوبر / تشرين الاول في عام 2012 .',
        },
      };
}
