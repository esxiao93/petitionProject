# SEED DATA
puts "✅ Deleting seed data..."

CongressionalMember.destroy_all
User.destroy_all
Petition.destroy_all
UserPetition.destroy_all
KeyIssue.destroy_all


# congressional_members
puts '✅ Seeding congressional members data...'

c1 = CongressionalMember.create(
    name: 'Lee Zeldin',
    bio: 'Congressman Lee Zeldin grew up in Suffolk County, New York, where he graduated from William Floyd High School in Mastic Beach. Congressman Zeldin graduated from the S tate University of New York at Albany (SUNY) and then Albany Law School, becoming New York`s youngest attorney at the time at the age of 23.

    After completing the Army ROTC program, Congressman Zeldin served four years on Active Duty. During that time, he served in different capacities, including as a Military Intelligence Officer, Prosecutor and Military Magistrate. While assigned to the Army`s elite 82nd Airborne Division, in the summer of 2006, Congressman Zeldin was deployed to Tikrit, Iraq, with an infantry battalion of fellow paratroopers in support of Operation Iraqi Freedom. Following his service on active duty, in 2007, Congressman Zeldin transitioned from Active Duty to the Army Reserve, where he currently serves as a Lieutenant Colonel.

    In 2008, Congressman Zeldin opened a successful law practice in Smithtown, New York, which he operated full time until he was elected to the New York State Senate in 2010, representing New York`s 3rd Senate District. As a State Senator, Congressman Zeldin led the successful effort to repeal the MTA Payroll Tax for 80 percent of employers, a job killing tax that was hurting New York`s small businesses. He also created the PFC Joseph Dwyer Program, a peer to peer counseling program for veterans suffering from Post Traumatic Stress Disorder (PTSD) and Traumatic Brain Injury (TBI); the program started in Suffolk County and quickly expanded across the state. Congressman Zeldin also successfully fought to repeal the Saltwater Fishing License Fee; a victory for tens of thousands of fishermen on Long Island.

    In 2014, following four years in the State Senate, Congressman Zeldin was elected to the U.S. House of Representatives, representing New York`s First Congressional District.

    Throughout his tenure in Congress, Representative Zeldin has continued to secure important victories for his district. He has championed the successful effort to save Plum Island, steered a $2 billion Electron Ion Collider (EIC) to Brookhaven National Lab (BNL), and ushered into law his Adult Day Health Care Act to aid veterans who are 70% of more disabled and his bill to safeguard veterans` homeownership opportunities. Congressman Zeldin also secured a new veterans health care clinic on the East End of Long Island, saved a vital communications spectrum for local first responders, helped lead the effort to permanently reauthorize the Zadroga Act and Victim Compensation Fund for 9/11 first responders and their families, and advanced several vital Army Corps projects for his district, including the over $1 billion Fire Island to Montauk Point (FIMP) project. 

    His office has also successfully resolved over 15,000 cases in favor of NY-1 constituents.

    Congressman Zeldin serves on two Committees in the House of Representatives: Financial Services and Foreign Affairs, where he serves as Ranking Member of the Subcommittee on Oversight and Investigations. Additionally, Congressman Zeldin serves as co-chair of the Long Island Sound Caucus and founding member of the National Estuary Program Caucus and as one of two Jewish Republicans in Congress, also serves as co-chairman of the House Republican Israel Caucus, which has over 100 members, and has been a stalwart opponent of the Boycott, Divestment and Sanctions (BDS) movement, coleading a House passed resolution (H.Res.246) to combat it.

    Congressman Zeldin resides in his hometown of Shirley with his wife, Diana, and their twin daughters, Mikayla and Arianna.',
    districtNUM: 1,
    political_party: 'Republican',
    years_in_office: 'since 2015',
    image_url: 'https://zeldin.house.gov/sites/zeldin.house.gov/files/wysiwyg_uploaded/Congressman%20Zeldin%20Headshot%202017_1.jpg'
)

c2 = CongressionalMember.create(
    name: 'Andrew Garbarino',
    bio: 'A lifelong Long Islander, Andrew has dedicated his life to family and community.

    The proud son of a lawyer and small business owner, Andrew went to Sayville High School where he participated in student government and worked at the local hardware store. As a man of faith, Andrew received his communion and confirmation at St. Lawrence Catholic Church, where he still attends Mass every Sunday. After high school graduation, Andrew went on to receive his BA in history and classical humanities from The George Washington University. Andrew then returned to Long Island where he received his Juris Doctorate from Hofstra University.
    
    Upon his graduation from law school, Andrew joined his father at their family law firm in downtown Sayville.
    
    Andrew`s love and appreciation for his family oriented community in Long Island inspired him to run for a seat in the New York Assembly, where he served the 7th district for four terms. During his tenure in the Assembly, Andrew fought to increase state funding for Long Island school districts, protect our island`s environment including the Great South Bay, oppose tax hikes, and support our local heroes in law enforcement.
    
    A proud member of the Sayville Rotary Club and Knights of Columbus, Andrew has been a leader in his Long Island community following the Rotary Club`s motto, `Service Above Self.`
    
    Andrew now represents New York`s Second Congressional Districts and fights every day for the hardworking people of Long Island.',
    districtNUM: 2,
    political_party: 'Republican',
    years_in_office: 'since 2021',
    image_url: 'https://garbarino.house.gov/sites/evo-subsites/garbarino.house.gov/files/evo-media-image/Official-Photo-Rep-Andrew-Garbarino.jpg'
)

c3 = CongressionalMember.create(
    name: 'Thomas Suozzi',
    bio: 'Congressman Tom Suozzi is a common-sense Democrat who has the experience to get the job done as Governor of New York.

    He is currently a member of the powerful House Ways and Means Committee, the chief tax-writing committee of the House of Representatives.
    
    Tom was elected Glen Cove Mayor in 1993. At just 31, he was the youngest mayor in the City`s history. He restored Glen Cove`s ailing fiscal health, securing numerous record-breaking credit ratings. He revitalized the City`s downtown business district, spurred massive commercial development, and built a new courthouse, city hall, and police headquarters.
    
    He spearheaded a $100 million clean-up of some of America`s most toxic superfund sites. That waterfront area is now a showcase of residential, commercial, and recreational development. Glen Cove was designated as a national Brownfields Showcase Community and recognized twice by Vice-President Al Gore for its environmental cleanup efforts.',
    districtNUM: 3,
    political_party: 'Democrat',
    years_in_office: 'since 2017',
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Thomas_Suozzi_official_photo.jpg/1200px-Thomas_Suozzi_official_photo.jpg'
)

c4 = CongressionalMember.create(
    name: 'Kathleen Rice',
    bio: 'Congresswoman Kathleen Rice represents New York`s Fourth Congressional District, which encompasses the majority of Nassau County, NY, a diverse suburban community located on Long Island.  
    
    First elected to Congress in 2014, Kathleen has become a leading voice on national security issues as a member of the Homeland Security Committee, where she passed legislation to improve airport security screening in her first year and conducted rigorous oversight of the Trump Administration`s border policies during her tenure as Chair of the Subcommittee on Border Security, Facilitation, and Operations. As a member of the Veterans` Affairs Committee, Kathleen established herself as a fierce advocate for veterans and for accountability at the Department of Veterans Affairs, and she authored bipartisan legislation to expand employment opportunities for veterans, which was signed into law in January 2021. For the 117th Congress, Kathleen was named to the Committee on Energy and Commerce, which has the broadest jurisdiction of any authorizing committee in Congress, and she remains a member of the Homeland Security Committee.  
    
    Prior to Congress, Kathleen ran for District Attorney of Nassau County in 2005 and shocked the Long Island political establishment by defeating a 31-year incumbent, becoming the first woman elected District Attorney in Long Island history. Kathleen served as District Attorney from 2006 to 2014, and received national acclaim for her efforts to combat drunk driving, which led to a statewide overhaul of DWI laws and Long Island`s first DWI-related murder convictions. Rice also focused on combating public corruption, launching investigations that led to significant government reforms and the convictions of dozens of officials from both parties who violated the public`s trust. 
     
    Rice began her career in public service as an Assistant District Attorney in Brooklyn, NY, where she prosecuted cases of domestic violence and gang activity before joining the office`s elite Homicide Bureau. In 1999, Kathleen was appointed an Assistant U.S. Attorney, where she went on to an award-winning career as a federal prosecutor in the U.S. Department of Justice`s Philadelphia office. 
     
    Kathleen resides in Garden City, NY, where she was raised with her nine brothers and sisters, and she is the proud owner of a Maltese-Yorkie rescue named Pearl. Kathleen is a graduate of the Catholic University of America (1987) and earned her law degree from Touro Law Center (1991).',
    districtNUM: 4,
    political_party: 'Democrat',
    years_in_office: 'since 2015',
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/a/a9/Kathleen_Rice_official_photo.jpg'
)

c5 = CongressionalMember.create(
    name: 'Gregory Meeks',
    bio: 'Serving the people of New York`s Fifth Congressional District has been Congressman Gregory Meeks` greatest professional honor. In his eleventh term in Congress, he remains focused on making government work for his constituents and the American people. Congressman Meeks is a solutions oriented lawmaker who is respected in Congress, New York State, and worldwide for his bipartisan efforts as an effective common sense leader who gets things done. He is a member of the New Democrat Coalition, the largest caucus in the House, consisting of pro-economic growth Democratic members and  co-chairs the NDCC Trade Task Force, the European Union Caucus, the Malaria and Neglected Tropical Diseases Caucus, the Global Investment in America Caucus, the Congressional Services Caucus, and several country caucuses, including Bangladesh, Brazil, Colombia, Kazakhstan, and Peru.

    Congressman Meeks views boosting the economy, creating new jobs for the residents of the 5th Congressional District, and greater business access for small, minority, and women owned enterprises as core to his mission.  One of his recent achievements has been the Crossing at Jamaica Station which spurred economic opportunity and created new affordable residential units. Congressman Meeks secured over $20 million in federal tax incentives for investments and assisted the establishment of new commercial air service which linked areas in upstate New York to JFK Airport.
    
    In addition to his work for New York`s 5th Congressional District, Congressman Meeks was recently elected by local leaders to Chair the Queens County Democratic Party.
    
    As a strong defender of the Democratic party and its values, he vigorously supports access to affordable health care, pushes for affordable housing, fights for gun control, and believes that there should be comprehensive global action to address climate change.
    As a member of the House Foreign Affairs Committee and Vice Chairman of the NATO Parliamentary Assembly Economics and Security Committee, Congressman Meeks seeks to promote policies that strengthen America`s brand abroad while also enhancing our national security.  Widely known for his support of our diplomatic corps, he believes that diplomacy and American diplomats are crucial to our nation`s global standing and the strength of multilateral engagement.  
    
    As a Member of the House Financial Services Committee, Congressman Meeks has promoted policies for economic empowerment and to enhance New York City`s status as the financial capital of the world. Whether it is access to capital, homeownership, wealth accumulation or economic development, the Congressman has been a steady and consistent champion on this important committee that has jurisdiction over all banking, securities and insurance issues.
    
    His work in the financial services sector has been recognized by some of New York`s largest employers in the financial services industry, including for his work as a Dodd-Frank conferee.
    
    Congressman Meeks earned his bachelor`s degree at Adelphi University and received his law degree from Howard University. He is a member of the Allen AME Church in St. Albans, New York and is married to Simone-Marie Meeks. He has three daughters, Ebony, Aja, and Nia.',
    districtNUM: 5,
    political_party: 'Democrat',
    years_in_office: 'since 1998',
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/c/cb/Gregory_Meeks%2C_official_portrait%2C_115th_congress.jpg'
)

c6 = CongressionalMember.create(
    name: 'Grace Meng',
    bio: 'Grace Meng represents New York`s 6th Congressional District located in Queens, New York.  She was born and raised in Queens as the daughter of immigrants and has never forgotten where she came from or who she fights for.

    As a child growing up in the most diverse county in America, Grace quickly came to believe that every person deserves a seat at the table.  Whether young or old, rich or poor, she believes every voice deserves to be heard.  That conviction prompted Grace to begin her professional career as a public interest lawyer before serving two terms in the New York State Assembly.
    
    Now, in her third term in Congress, Grace continues to advocate for inclusive policies that benefit the vulnerable and the often overlooked.  From her seat on the House Appropriations Committee, and as the mother of two young boys, she regularly fights for federal programs that benefit women and children.  She even co-founded the Bipartisan Congressional Kids` Safety Caucus which she still co-chairs.
    
    While Grace remains one of the 15 youngest Democrats in Congress, she has been ranked the 8th most-effective legislator in the Democratic Party according to the Center for Effective Lawmaking. She serves as Chair of ASPIRE PAC through which she supports Asian American candidates across the country, and works to ensure that Asian American voices and concerns are heard in the political process.  
    
    Grace is the national leader on issues pertaining to menstrual hygiene product safety and availability.  She successfully fought for the provision of menstrual hygiene products to homeless women, fights for their availability to incarcerated women, denounced the discriminatory tampon tax in New York, and has introduced federal legislation that would require menstrual hygiene product labels to include a list of ingredients.
    
    In February of 2017, Grace was elected Vice Chair of the Democratic National Committee where she focused on winning back the House in 2018 and winning back the White House in 2020.  
    
    Grace represents the only congressional district located entirely in Queens, New York, where she continues to live with her husband, Dr. Wayne Kye, a professor at New York University`s College of Dentistry, and her two boys. She attended New York City public schools, including Stuyvesant High School, received her undergraduate degree from the University of Michigan, and earned her law degree from Yeshiva University`s Benjamin N. Cardozo School of Law.',
    districtNUM: 6,
    political_party: 'Democrat',
    years_in_office: 'since 2013',
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/1/16/Grace_Meng_Official_Congressional_Photo.jpg'
)

c7 = CongressionalMember.create(
    name: 'Nydia Velazquez',
    bio: 'Congresswoman Nydia M. Velázquez is currently serving as Representative for New York`s 7th Congressional District. In the 117th Congress, she is the Chairwoman of the House Small Business Committee, a senior member of the Financial Services Committee and a member of the House Committee on Natural Resources. 

    She has made history several times during her tenure in Congress. In 1992, she was the first Puerto Rican woman elected to the U.S. House of Representatives. In February 1998, she was named Ranking Democratic Member of the House Small Business Committee, making her the first Hispanic woman to serve as Ranking Member of a full House committee. Most recently, in 2006, she was named Chairwoman of the House Small Business Committee, making her the first Latina to chair a full Congressional committee.
    
    Given these achievements, her roots are humble. She was born in Yabucoa, Puerto Rico - a small town of sugar-cane fields - in 1953, and was one of nine children. Velázquez started school early, skipped several grades, and became the first person in her family to receive a college diploma. At the age of 16, she entered the University of Puerto Rico in Rio Piedras. She graduated magna cum laude in 1974 with a degree in political science. After earning a master`s degree on scholarship from N.Y.U., Velázquez taught Puerto Rican studies at CUNY`s Hunter College in 1981.
    
    But her passion for politics soon took hold. In 1983, Velázquez was appointed Special Assistant to Congressman Edolphus Towns (D-Brooklyn). One year later, she became the first Latina appointed to serve on the New York City Council.
    
    By 1986, Velázquez served as the Director of the Department of Puerto Rican Community Affairs in the United States. During that time, she initiated one of the most successful Latino empowerment programs in the nation`s history - "Atrevete" (Dare to Go for It!).
    
    In 1992, after months of running a grassroots political campaign, Velázquez was elected to the House of Representatives to represent New York`s 7th District. Her district includes parts of Brooklyn, Queens and the Lower East Side of Manhattan. Encompassing many diverse neighborhoods, it is home to a large Latino population, Jewish communities, and parts of Chinatown.
    
    As a fighter for equal rights of the underrepresented and a proponent of economic opportunity for the working class and poor, Congresswoman Velázquez combines sensibility and compassion, as she works to encourage economic development, protect community health and the environment, combat crime and worker abuses, and secure access to affordable housing, quality education and health care for all New York City families.
    
    As the top Democrat on the House Small Business Committee, which oversees federal programs and contracts totaling $200 billion annually, Congresswoman Velázquez has been a vocal advocate of American small business and entrepreneurship. She has established numerous small business legislative priorities, encompassing the areas of tax, regulations, access to capital, federal contracting opportunities, trade, technology, health care and pension reform, among others. Congresswoman Velázquez was named as the inaugural "Woman of the Year" by Hispanic Business Magazine in recognition of her national influence in both the political and business sectors and for her longtime support of minority enterprise.
    
    Congresswoman Velázquez can often be found close to home, working for the residents of her district.',
    districtNUM: 7,
    political_party: 'Democrat',
    years_in_office: 'since 1993',
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/f/f4/Nydia_Vel%C3%A1zquez_official_portrait.jpg'
)
c8 = CongressionalMember.create(
    name: 'Hakeem Jeffries',
    bio: 'Congressman Jeffries was elected Chairman of the House Democratic Caucus in 2018. In that capacity, he is the fifth highest-ranking Democrat in the House of Representatives. He is also the former Whip of the Congressional Black Caucus and previously co-chaired the Democratic Policy and Communications Committee where he helped develop the For The People agenda. Most recently, Congressman Jeffries served as an Impeachment Manager. Paying homage to his Brooklyn roots, Congressman Jeffries quoted The Notorious B.I.G. as he laid out House Democrats` argument outlining the case against Trump.

    In Congress, Congressman Jeffries has emerged as a tireless advocate for social and economic justice. He has worked hard to help residents impacted by the devastation of Superstorm Sandy, reform our criminal justice system, improve the economy for everyday Americans and protect our health care from right-wing attacks. Before being elected to the U.S. House of Representatives, Congressman Jeffries served for six years in the New York State Assembly. Prior to his career in public service, Congressman Jeffries practiced law at Paul, Weiss, Rifkind, Wharton & Garrison LLP, and served as litigation counsel for Viacom Inc. and CBS. Congressman Jeffries received his bachelor`s degree at the State University of New York at Binghamton, earned a master`s degree in public policy from Georgetown University and graduated magna cum laude at New York University School of Law. Congressman Jeffries was born in Brooklyn, is a product of New York City`s public school system, and currently lives in Prospect Heights with his wife and two sons.',
    districtNUM: 8,
    political_party: 'Democrat',
    years_in_office: 'since 2013',
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Rep-Hakeem-Jeffries-Offical-Portrait-1638x2048.jpg/1200px-Rep-Hakeem-Jeffries-Offical-Portrait-1638x2048.jpg'
)
c9 = CongressionalMember.create(
    name: 'Yvette Clarke',
    bio: 'Hailing from central Brooklyn, Congresswoman Yvette Diane Clarke feels honored to represent the community that raised her. She is the proud daughter of Jamaican immigrants and takes her passion for her Caribbean heritage to Congress, where she co-chairs the Congressional Caribbean Caucus and works to foster relationships between the United States and the Caribbean Community. Clarke is a Senior Member of both the House Energy and Commerce Committee and House Committee on Homeland Security, where she serves as Chair of the Cybersecurity, Infrastructure Protection, and Innovation Subcommittee. Clarke has been a member of the Congressional Black Caucus since coming to Congress in 2007 and today chairs its Immigration Task Force.

    As the Representative of the Ninth Congressional District of New York, Congresswoman Clarke has dedicated herself to continuing the legacy of excellence established by the late Honorable Shirley Chisholm, the first Black woman and Caribbean American elected to Congress. In the 117th Congress, Congresswoman Clarke introduced landmark legislation, which passed in the House, the Dream and Promise Act (H.R. 6). This legislation would give 2.5 million DREAMers, temporary protected status, and deferred enforcement departure recipients a clear citizenship pathway.
    
    Clarke is a leader in the tech and media policy space as co-chair of the Smart Cities Caucus and co-chair of the Multicultural Media Caucus. Congresswoman Clarke believes smart technology will make communities more sustainable, resilient, and livable and works hard to ensure communities of color are not left behind while these technological advancements are made. Clarke formed the Multicultural Media Caucus to address diversity and inclusion issues in the media, telecom, and tech industries. Clarke is one of the Co-Chairs of the Congressional Caucus on Black Women and Girls, which develops programs to support the aspirations of Black women of all ages. Congresswoman Clarke is also the co-chair of the Medicare for All Caucus, where she is fighting for the right to universal health care.
    
    Prior to being elected to the United States House of Representatives, Congresswoman Clarke served on New York`s City Council, representing the 40th District. She succeeded her pioneering mother, former City Council Member Dr. Una S. T. Clarke, making them the first mother-daughter succession in the City Council`s history. She cosponsored City Council resolutions that opposed the war in Iraq, criticized the federal USA PATRIOT Act, and called for a national moratorium on the death penalty.
    
    Congresswoman Clarke is a graduate of Oberlin College and was a recipient of the prestigious APPAM/Sloan Fellowship in Public Policy and Policy Analysis. She received the Honorary Degree of Doctor of Laws Honoris Causa from the University of Technology, Jamaica, and the Honorary Doctorate of Public Policy from the University of the Commonwealth Caribbean. Congresswoman Clarke currently resides in the Flatbush neighborhood of Brooklyn, where she grew up.',
    districtNUM: 9,
    political_party: 'Democrat',
    years_in_office: 'since 2007',
    image_url: 'https://clarke.house.gov/wp-content/uploads/2017/02/bio.jpg'
)
c10 = CongressionalMember.create(
    name: 'Jerry Nadler',
    bio: 'Congressman Jerrold “Jerry” Nadler represents New York`s 10th Congressional District, one of the most dynamic and diverse districts in the country. The district includes Manhattan`s Upper West Side, Morningside Heights, Hell`s Kitchen, Chelsea, Greenwich Village, Soho, Wall Street, and Battery Park City, as well as the Brooklyn neighborhoods of Borough Park, Kensington, and parts of Bay Ridge, Bensonhurst, Dyker Heights, Red Hook, Sunset Park and Midwood.

    Rep. Nadler began his career in public service in 1976 in the New York State Assembly. Representing the Upper West Side, he served as a Democratic Assemblyman for 16 years and played a significant role in shaping New York State law concerning child support enforcement and domestic abuse, as well as making major contributions to housing, transportation and consumer protection policy in the state.  In 1992, Rep. Nadler was elected to the U.S. House of Representatives in a special election and has served in Congress ever since.  He was re-elected to his fourteenth full term in 2018.
    
    The Chairman of the House Judiciary Committee, Congressman Nadler served as Chairman or Ranking Member of its Subcommittee on the Constitution, Civil Rights, and Civil Liberties for 13 years and also served as the Ranking Member of the Subcommittee on Courts, Intellectual Property, and the Internet. As Chairman of the House Judiciary Committee, Rep. Nadler led two successful impeachments of former President Donald J. Trump, the only person ever impeached twice. 
    
    
    Rep. Nadler is a graduate of Crown Heights Yeshiva, Stuyvesant High School, Columbia University and Fordham Law School. He lives on the Upper West Side of Manhattan with his wife, Joyce Miller.',
    districtNUM: 10,
    political_party: 'Democrat',
    years_in_office: 'since 1992',
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/b/bb/Jerry_Nadler_116th_Congress_official_portrait_%28cropped%29.jpg'
)
c11 = CongressionalMember.create(
    name: 'Nicole Malliotakis',
    bio: '
    Congresswoman Nicole Malliotakis was sworn in on January 3, 2021 to represent Staten Island and Southern Brooklyn.  
    
    Prior to serving in the U.S. House of Representatives, Congresswoman Nicole Malliotakis was elected to the New York State Assembly on November 2, 2010, defeating a two-term incumbent. In the Assembly, she served as Minority Whip and the ranking minority member of the Assembly Committee on Governmental Employees. For five terms, Congresswoman Malliotakis fought to restore ethics in Albany, expand transit service in her district, improve programs for senior citizens, reform education and improve New York`s economic climate by reducing the tax burden on small businesses and residents.  A cornerstone of her tenure was helping her community recover and rebuild following the devastation of Hurricane Sandy in 2012. 
    
    In addition to advocating for these same issues in Washington, Congresswoman Malliotakis is acutely focused on securing New York`s fair share of federal mass transit funding, which would go towards expanding transportation services and easing traffic congestion, while also championing public safety by supporting our nation`s law enforcement officers. 
    
    Congresswoman Malliotakis is the daughter of immigrants, her father from Greece and her mother a Cuban exile of the Castro dictatorship. She is currently the only Republican member representing New York City in Congress, representing a district spanning the boroughs of Brooklyn and Staten Island. She is a passionate advocate for animal rights and the strengthening of animal cruelty laws, and in her spare time, enjoys spending time with her chihuahua, Peanut.',
    districtNUM: 11,
    political_party: 'Republican',
    years_in_office: 'since 2021',
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Congresswoman_Nicole_Malliotakis.jpg/800px-Congresswoman_Nicole_Malliotakis.jpg'
)
c12 = CongressionalMember.create(
    name: 'Carolyn Maloney',
    bio: 'First elected to Congress in 1992, Carolyn B. Maloney is a recognized progressive national leader with extensive accomplishments on financial services, national security, the economy, and women`s issues. She is currently Chairwoman of the House Committee on Oversight and Reform and former Chair of the Joint Economic Committee, the first woman to hold both of these positions. 

    Maloney has authored and passed more than 74 measures, either as stand-alone bills or as measures incorporated into larger legislation packages. Twelve of these bills were signed into law at formal (and rare) Presidential Signing Ceremonies.
    
    Rep. Maloney`s career has been a series of firsts. She is the first woman to represent New York City`s 7th Councilmanic district (where she was the first woman to give birth while in office); and was the first woman to Chair the Joint Economic Committee, a House and Senate panel that examines and addresses the nation`s most pressing economic issues. Only 18 women in history have chaired Congressional committees. Maloney is the author of Rumors of our Progress Have Been Greatly Exaggerated: Why Women`s Lives Aren`t Getting any Easier and how we can Make Real Progress for Ourselves and Our Daughters, which has been used as a textbook in women`s studies courses. A champion for domestic and international women`s issues, Rep. Maloney has authored and helped pass legislation that targets sex trafficking, including the first bill that focused on the `demand` side of human trafficking to punish the perpetrators of these heinous crimes. She is co-chair of the Congressional Caucus on Human Trafficking, and previously served as the co-chair of the Trafficking Task Force of the Congressional Caucus for Women`s Issues.',
    districtNUM: 12,
    political_party: 'Democrat',
    years_in_office: 'since 1993',
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Carolyn_Maloney%2C_official_portrait%2C_116th_congress.jpg/1200px-Carolyn_Maloney%2C_official_portrait%2C_116th_congress.jpg'
)
c13 = CongressionalMember.create(
    name: 'Adriano Espaillat',
    bio: 'U.S. Representative Adriano Espaillat proudly represents New York`s Thirteenth Congressional District.

    Representative Espaillat is the first Dominican American to serve in the U.S. House of Representatives and his congressional district includes Harlem, East Harlem, West Harlem, Hamilton Heights, Washington Heights, Inwood, Marble Hill, and the north-west Bronx.
    
    First elected to Congress in 2016, Representative Espaillat was sworn into office on January 3, 2017, during the 115th Congress and is serving his third term in Congress.
    
    Representative Espaillat currently serves as a member of the influential U.S. House Committee on Appropriations responsible for funding the federal government`s vital activities to keep the United States safe, strong, and moving forward. Representative Espaillat is also a member of the House Committee on Education and Labor and the Congressional Hispanic Caucus (CHC), where he serves in a leadership role as the Second Vice Chair. Representative Espaillat is a member of the Congressional Progressive Caucus, where he serves as Deputy Whip, and he serves as a Senior Whip of the Democratic Caucus. Through his committee assignments and caucus leadership positions, Representative Espaillat helps advance and amplify legislative priorities and accomplishments that aim to improve the lives of families around the nation. Rep. Espaillat is a proud member of Phi Beta Sigma Fraternity, Incorporated.
    
    Together with his Democratic colleagues, Representative Espaillat worked to pass more than 900 bills during the 116th Congress, including bipartisan legislation to clean up government, defend access to affordable health care, lower prescription drug costs, respond to the COVID-19 pandemic, invest in our nation`s infrastructure, and support policies for job creation and economic growth. Additionally, during the 116th Congress, Representative Espaillat introduced more than 40 bills and resolutions aimed at improving the lives of constituents, helping small businesses become more competitive and recover from the pandemic, protecting the rights of immigrants, securing funds to complete the Second Avenue Subway`s extension into East Harlem, and helping to secure federal grant funding for New York`s 13th congressional district.
    
    A steadfast champion for working- and middle-class New Yorkers, Representative Espaillat is a staunch advocate of a fair living wage, immediate and effective investments in affordable housing, meaningful criminal justice reform, infrastructure improvements, expanded youth programs, and better educational opportunities.
    
    Throughout the tenure of his career in public service, Representative Espaillat has been a vocal advocate for protecting tenants, improving schools, and making serious, smart investments in economic development, job creation, and environmental protection. Prior to coming to Congress, he served as a New York State Senator during which he represented the neighborhoods of Marble Hill, Inwood, Washington Heights, Hamilton Heights, West Harlem, the Upper West Side, Hell`s Kitchen, Clinton, and Chelsea.
    
    While in the New York State Senate, he served as the Ranking Member of the Senate Housing, Construction, and Community Development Committee; Chairman of the Senate Puerto Rican/Latino Caucus; and as a member of the Environmental Conservation, Economic Development, Codes, Insurance, and Judiciary committees. Prior to his tenure as a state senator, he served in the New York State Assembly, and in 1996 became the first Dominican American elected to a state legislature. In 2002, Espaillat was elected chair of the New York State Black, Puerto Rican, Hispanic and Asian Legislative Caucus.',
    districtNUM: 13,
    political_party: 'Democrat',
    years_in_office: 'since 2017',
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/8/80/Rep._Adriano_Espaillat_Official_Photo_116th_Congress.jpg'
)
c14 = CongressionalMember.create(
    name: 'Alexandria Ocasio-Cortez',
    bio: 'Alexandria was born in The Bronx to working class parents: her father was a small business owner and architect from the South Bronx, and her mother cleaned homes after moving to New York from Arecibo, Puerto Rico. As school violence and dropout rates in The Bronx rose in the early 90`s, her parents put their savings together and purchased a modest home 30 miles north of the city in search of better schools for the family. As a result, much of Alexandria`s adolescence was spent in transit between her tight-knit extended family in The Bronx and school in Yorktown Heights. It struck Alexandria as unfair, even then, how the opportunities available to children and their families were often based on their ZIP code.

    Alexandria went on to study Economics and International Relations at Boston University. At the start of her sophomore year, Alexandria`s father passed away suddenly from cancer at just 48 years old. Facing huge medical bills, the family risked foreclosure and her mother took another job driving a school bus. The unjust medical debt left a lasting impression on Alexandria, and she sought out an internship in the late Sen. Ted Kennedy`s office. Upon graduating college, Alexandria came back to The Bronx and pursued work in education and community organizing: as an Educational Director for the National Hispanic Institute, she worked with promising high school youth to expand their skill-sets in community leadership and social enterprise; she also piloted projects to help improve literacy skills in young children and middle-schoolers. But as the economy floundered, Alexandria found herself working two jobs and 18-hour shifts in restaurants to help keep her family afloat, while balancing student loan and insurance payments.',
    districtNUM: 14,
    political_party: 'Democrat',
    years_in_office: 'since 2019',
    image_url: 'https://www.psuunderground.com/wp-content/uploads/2020/03/AOC.jpg'
)
c15 = CongressionalMember.create(
    name: 'Ritchie Torres',
    bio: 'Representative Ritchie Torres is a fighter from the Bronx who has spent his entire life working for the community he calls home. Like many people in the South Bronx, poverty and struggle have never been abstractions to him, and he governs from a place of lived experience.

    Ritchie`s mother single-handedly raised him, his twin brother, and his sister in a public-housing project. She paid the bills working minimum-wage jobs, which in the 1990s paid $4.25 an hour.  While Ritchie grew up with mold, lead, leaks, and no reliable heat or hot water in the winter, he watched the government spend over $100 million dollars to build a golf course across the street for Donald Trump. In 2013, at the age of 25, Ritchie became New York City`s youngest elected official and the first openly L.G.B.T.Q. person elected to office in the Bronx. At the City Council, Ritchie stood out, and during his seven-year tenure he tenaciously tackled problems big and small for the Bronx and New York City. He passed over forty pieces of legislation, including legislation protecting the City`s affordable housing stock and tackling the city`s opioid epidemic. As the Chairman overseeing NYCHA, he held the first committee hearing ever in public housing, which led to a $3 billion-dollar FEMA investment, the largest in NYC history. As Chair of the Oversight & Investigations Committee, Ritchie has led investigations into the heating outages and lead poisoning at NYCHA, the Taxi Medallion scandal, the City`s controversial Third-Party Transfer program, and Kushner Companies.

    Ritchie currently lives in the South Bronx and represents NY-15 in the South Bronx. He is a member of the Committee on Financial Services and serves as the Vice Chair of the Committee on Homeland Security.',
    districtNUM: 15,
    political_party: 'Democrat',
    years_in_office: 'since 2021',
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Ritchie_Torres_117th_U.S_Congress.jpg/1200px-Ritchie_Torres_117th_U.S_Congress.jpg'
)
c16 = CongressionalMember.create(
    name: 'Jamaal Bowman',
    bio: 'Congressman Jamaal Bowman, Ed.D., represents New York`s 16th District, which includes the Northern Bronx and parts of Westchester County, including Yonkers, New Rochelle, and Mount Vernon. Bowman was born and raised in New York City, spending his early years in public housing and rent-controlled apartments. He was raised by his mother, who supported them with her post office worker`s salary. After graduating from the University of New Haven, Rep. Bowman began his career as a crisis intervention teacher in a Bronx public school and went on to earn a master`s degree in guidance counseling from Mercy College and a doctorate in education from Manhattanville College. 

    In 2009, Bowman founded Cornerstone Academy for Social Action, a Bronx middle school focused on unlocking the natural brilliance of all children through a holistic curriculum, where he served as principal for a decade. At CASA, Bowman worked to center students` voices, cultural awareness, and love. He worked to ensure advanced student involvement in science, technology, engineering, art, and math. Bowman has also been an outspoken advocate for rethinking education, including ending state-sanctioned yearly standardized testing.
    
    Bowman was elected to Congress in 2020, running on a platform of transformative progressive policies that will improve the lives of those who have been legislated out of the American dream. Congressman Bowman is dedicated to passing visionary policy that infuses climate justice with economic and racial justice, and to highlighting the importance of research and investing communities of color.
    
    Bowman lives in Yonkers, New York, with his wife and children.',
    districtNUM: 16,
    political_party: 'Democrat',
    years_in_office: 'since 2021',
    image_url: 'https://bowman.house.gov/index.cfm?a=Files.Serve&File_id=A91E77C2-5E8E-4C72-907F-5DF60C52AE0F'
)
c17 = CongressionalMember.create(
    name: 'Mondaire Jones',
    bio: '
    Mondaire Jones is serving his first term as the Congressman from New York`s 17th District, encompassing all of Rockland County and parts of central and northern Westchester County.
    
    A product of East Ramapo public schools, Rep. Jones was raised in Section 8 housing and on food stamps in the Village of Spring Valley by a single mother who worked multiple jobs to provide for their family.
    
    After graduating from Stanford University, Rep. Jones worked in the U.S. Department of Justice Office of Legal Policy, where he vetted candidates for federal judgeships and worked to reform our criminal legal system to make it more fair and equitable. He later graduated from Harvard Law School.
    
    Prior to running for Congress, Rep. Jones worked as a litigator in private practice, where was awarded by The Legal Aid Society of New York for his pro bono service investigating claims of employment discrimination and helping families defrauded during the Great Recession recover funds. Subsequently, he served as a litigator in the Westchester County Law Department.
    
    Rep. Jones began his activism in high school through the Spring Valley NAACP Youth Council. He would go on to serve on the NAACP`s National Board of Directors. Rep. Jones is a co-founder of the nonprofit Rising Leaders, Inc., which teaches professional skills to underserved middle-school students in three American cities, and has previously served on the board of the New York Civil Liberties Union.
    
    As a member of the Judiciary Committee, Rep. Jones continues his lifelong advocacy for civil rights and civil liberties, and the strengthening of our democracy. In Congress, Rep. Jones is fighting for COVID-19 relief, a living wage for all, universal health care, racial justice, climate action, and restoration of the SALT deduction.
    
    Rep. Jones serves as the Freshman Representative to Leadership in the 117th Congress, making him the youngest member of the Democratic House leadership team. He also serves as a Deputy Whip for the Congressional Progressive Caucus and as a Co-Chair of the LGBTQ Equality Caucus.
    
    Rep. Jones was raised in Rockland County and resides in Westchester County.',
    districtNUM: 17,
    political_party: 'Democrat',
    years_in_office: 'since 2021',
    image_url: 'http://jones.house.gov/sites/evo-subsites/jones.house.gov/files/evo-media-image/Representative%20Mondaire%20Jones_0.jpg'
)
c18 = CongressionalMember.create(
    name: 'Sean Patrick Maloney',
    bio: 'Representative Sean Patrick Maloney currently represents New York`s 18th district in the U.S. House of Representatives and was first elected in November 2012. His top priorities include national security, protecting our drinking water, ensuring our veterans get the benefits they earned, and combating the heroin and opioid epidemic.

    Rep. Maloney currently serves on the House Permanent Select Committee on Intelligence, the House Transportation and Infrastructure Committee, and the House Agriculture Committee. 
    
    The House Intelligence Committee is responsible for overseeing the nation`s intelligence agencies, including components of the Departments of Defense, Homeland Security, Justice, State, Treasury and Energy. 
    
    Representative Maloney serves on the House Transportation and Infrastructure Committee, which has jurisdiction over all modes of transportation: aviation, maritime, and waterborne transportation, highways, bridges, mass transit, and railroads. 
    
    Rep. Maloney also serves on the House Agriculture Committee, where he fights to protect important and unique programs which benefit local farmers in the Hudson Valley. 
    
    He has a distinguished background in business and public service. He served as a senior advisor in President Bill Clinton`s White House as part of a team that balanced the budget and paid down the debt, all while creating over eight hundred thousand jobs here in New York.
    
    When Sean left the White House, he built his own business from scratch. His high-tech startup created hundreds of New York jobs.
    
    Sean then served as a senior staff member to two Democratic governors of New York, focusing on education and infrastructure projects. He oversaw 13 state agencies and departments, including those responsible for all homeland security, state police and emergency management operations.
    
    Sean and his husband, Randy Florke, have 3 children together and currently reside in Cold Spring, NY.',
    districtNUM: 18,
    political_party: 'Democrat',
    years_in_office: 'since 2013',
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/8/8f/Congressman_Sean_Patrick_Maloney_official_portrait.jpg'
)
c19 = CongressionalMember.create(
    name: 'Antonio Delgado',
    bio: 'Born and raised in Schenectady, Antonio is a native New Yorker. His parents worked hard for General Electric, benefited from a thriving economy, and were able to pursue the American Dream of building a better future for Antonio and his younger brother. Antonio attended Colgate University, in Hamilton, New York, where he graduated with high honors and earned a Rhodes Scholarship to Oxford. From there, he went to law school at Harvard, which is where he met his wife Lacey, a native of Ulster County.

    In 2018, Antonio decided to run for Congress because for too long, leaders in Washington failed to give voice to working people struggling to achieve the American Dream. For too long they failed to provide a vision forward in an ever-changing global economy that left thousands of New Yorkers behind. The past few decades have seen good-paying jobs like those Antonio`s parents had disappear, with fewer opportunities for families seeking their share of the American Dream.',
    districtNUM: 19,
    political_party: 'Democrat',
    years_in_office: 'since 2019',
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Antonio_Delgado%2C_official_portrait%2C_116th_Congress.jpg/800px-Antonio_Delgado%2C_official_portrait%2C_116th_Congress.jpg'
)
c20 = CongressionalMember.create(
    name: 'Paul Tonko',
    bio: 'Congressman Paul Tonko represents New York`s 20th Congressional District, including the communities of Albany, Schenectady, Troy, Saratoga Springs and Amsterdam. He represents all of Albany and Schenectady Counties and parts of Montgomery, Rensselaer and Saratoga Counties.
    
    He is serving his seventh term, after first being sworn into Congress in 2009.
    
    Paul serves on the Energy and Commerce Committee, the oldest standing committee in the House, created in December of 1795. He is the first Upstate New York Democratic member to serve on the committee since Leo O`Brien, who resigned the post in October 1966. He was elected by his peers in the 116th Congress to chair the Subcommittee on Environment and Climate Change. He was also selected to continue his service on the Science, Space and Technology Committee, as well as on the Natural Resources Committee.

    He has previously served on the Education and Labor Committee and the Budget Committee.',
    districtNUM: 20,
    political_party: 'Democrat',
    years_in_office: 'since 2009',
    image_url: 'https://npr.brightspotcdn.com/dims4/default/5ce2949/2147483647/strip/true/crop/2024x2057+0+0/resize/880x894!/quality/90/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2Flegacy%2Fsites%2Fwamc%2Ffiles%2F201701%2F0fficial_tonko_cropped.jpg'
)
c21 = CongressionalMember.create(
    name: 'Elise Stefanik',
    bio: 'Congresswoman Elise Stefanik proudly represents New York`s 21st District in the House of Representatives in her fourth term in office.

    In May 2021, Congresswoman Stefanik was elected by her colleagues to serve in House Leadership as Chair of the House Republican Conference.
    
    The Center for Effective Lawmaking ranked her in the top 10 most effective Republican members, and the #1 most effective for commerce policy impacting small businesses and workers.
    
    She is a member of the House Armed Services Committee, the Committee on Education and Labor, and the House Permanent Select Committee on Intelligence. On the Armed Services Committee, Congresswoman Stefanik serves on the new Subcommittee on Cyber, Innovative Technologies, and Information Systems, and as a member of the subcommittee on Strategic Forces. On the Committee on Education and Labor, she serves on the Higher Education and Workforce Investment, and Workforce Protections Subcommittees.
    
    Congresswoman Stefanik was born and raised in Upstate New York. Prior to serving in Congress, she worked at her family`s small business. Her upbringing taught her the hard work and perseverance necessary to build, operate and grow small businesses in the North Country. Congresswoman Stefanik graduated with Honors from Harvard University, as the first member of her immediate family to receive a college degree. 
    
    From 2006 - 2009, Congresswoman Stefanik served in the West Wing of the White House on President George W. Bush`s Domestic Policy Council Staff and in the Office of the Chief of Staff, where she assisted in overseeing the policy development process on all economic and domestic policy issues. Congresswoman Stefanik served as the Director of Vice-Presidential Debate Prep to Paul Ryan, and as the Director of Communications for the Foreign Policy Initiative. 
    
    Elise`s family has owned a home on Lake Champlain in Essex County for over 30 years. Elise lives in Schuylerville with her husband Matt and their newborn son Sam.',
    districtNUM: 21,
    political_party: 'Republican',
    years_in_office: 'since 2015',
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/a/a3/Elise_Stefanik%2C_115th_official_photo.jpg'
)
c22 = CongressionalMember.create(
    name: 'Claudia Tenney',
    bio: 'Claudia Tenney is an attorney, businesswoman and advocate for the 24th District. Her insight into public service has been shaped by experiences beyond politics, including juggling the demands of running a small business while raising her son as a single mother.

    Claudia was elected to Congress in November 2016 to represent New York`s old 22nd District which encompasses eight counties in Upstate New York. Prior to her election to Congress, Claudia represented portions of the 24th District for six years in the New York State Assembly.
    
    Claudia graduated from Colgate University and the Taft College of Law at the University of Cincinnati. She is the co-owner of Mid-York Press, Inc., a commercial printing and manufacturing firm started by her maternal grandfather in 1946 in Hamilton, Madison County. Mid-York Press now currently employs nearly 80 people in the Chenango County community of Sherburne.
    
    Claudia was the only American employed by the Consulate General of Yugoslavia. She has remained active with friends and colleagues from the former Yugoslav Consulate and with the Bosnian refugee population in the Utica area. She also published and produced the first Bosnian newspaper in Utica, which is home to the largest Bosnian population in the nation.',
    districtNUM: 22,
    political_party: 'Republican',
    years_in_office: 'since 2021',
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Rep._Claudia_Tenney_official_portrait%2C_117th_Congress.jpg/1200px-Rep._Claudia_Tenney_official_portrait%2C_117th_Congress.jpg'
)
c23 = CongressionalMember.create(
    name: 'Tom Reed',
    bio: 'VACANT',
    districtNUM: 23,
    political_party: 'Republican',
    years_in_office: 'since 2010',
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/7/7a/TomReedNewOfficial.jpg'
)
c24 = CongressionalMember.create(
    name: 'John Katko',
    bio: 'Congressman John M. Katko was first elected to represent the 24th Congressional District in the U.S. House of Representatives in November 2014. He was re-elected for a fourth term in November 2020.   The 24th Congressional District includes all of Onondaga, Cayuga, and Wayne Counties and the western portion of Oswego County.  

    A Camillus, NY native, John left his 20-year career as a federal prosecutor to run for public office because he believes Central New York deserves strong, independent leadership in Washington.
    
    In Congress, John serves as Ranking Member on the House Committee on Homeland Security and as a member of the House Committee on Transportation & Infrastructure. 
    
    
    FORMER PROSECUTOR
    
    After graduating with honors from both Niagara University and Syracuse University College of Law, John began his legal career in private practice at a firm in Washington, D.C.  It was not long before John embarked on a career in public service, serving first as a Senior Trial Attorney at the U.S. Securities and Exchange Commission and then commencing his twenty-year career as an Assistant U.S. Attorney for the U.S. Department of Justice.   Early in his career as a federal prosecutor, John served as a Special Assistant U.S. Attorney in the Eastern District of Virginia and with the DOJ`s Criminal Division, Narcotics & Dangerous Drug Section.   In this capacity, John served as a Senior Trial Attorney on the U.S.-Mexico border in El Paso, Texas and San Juan, Puerto Rico.  
    
    John and his wife, Robin, ultimately returned to John`s hometown of Camillus, NY to raise their family.  For over 15 years, John served as a federal organized crime prosecutor in Syracuse for the U.S. Attorney`s Office in the Northern District of New York.   In this role, John led high-level narcotics federal prosecutions, concurrently holding the positions of Narcotics Chief, Organized Crime Drug Enforcement Task Force Coordinator, Binghamton Office Supervisor, Team Leader, and Grand Jury Coordinator.  Notably, John served as Supervisor of the Narcotics Section, formulating the Syracuse Gang Violence Task Force and successfully prosecuting the first-ever RICO gang case in the City of Syracuse, which led to a significant drop in the City`s violent crime rate.
    
    John has been honored with the top prosecutor award by three separate Attorneys General, both Democrat and Republican, for his work on the Gang Violence Task Force and international drug-trafficking investigations.   John has lectured at Syracuse University College of Law and Cornell Law School and led attorney trainings for criminal investigations and prosecutions worldwide in Moscow, Croatia, Trinidad & Tobago, Brazil, and El Salvador.  In 2011, John was selected to be the sole U.S. advisor on a highly sensitive prosecution in Albania.
    
    John retired from the U.S. Department of Justice in January 2013 to run for Congress.
    
     
    THE KATKO FAMILY
    
    John and Robin, an RN who has spent her career working in women`s healthcare, are college sweethearts and have been married for nearly 30 years.  John, Robin, their three children, Sean, Logan, and Liam, and their yellow lab, Henry, are proud to call Camillus home.  All three of the Katko boys are enthusiastic hockey players. 
    
    John remains active in the Central New York community.  He has served as President of the Central New York Chapter of the Leukemia and Lymphoma Society and is actively involved in other community organizations, including the Onondaga County Foster Parent Program and the Camillus Youth Hockey Association.',
    districtNUM: 24,
    political_party: 'Republican',
    years_in_office: 'since 2015',
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/John_Katko_official_photo.jpg/1200px-John_Katko_official_photo.jpg'
)
c25 = CongressionalMember.create(
    name: 'Joseph Morelle',
    bio: 'Congressman Joe Morelle is proud to represent New York`s 25th Congressional District, which includes almost the entirety of Monroe County.  A lifelong resident of Upstate New York, Rep. Morelle is a former small business owner and was previously elected to the Monroe County Legislature as well as the New York State Assembly, where he served as Majority Leader from 2013-2018. Throughout his career, Rep. Morelle has worked diligently to improve and expand access to healthcare for all people, grow our economy, and protect our communities by passing legislation to ban assault weapons and strengthen gun background checks.

    A graduate of the State University of New York at Geneseo, Rep. Morelle resides in the town of Irondequoit in Rochester, New York, with his wife, Mary Beth. They have three children and four grandchildren.',
    districtNUM: 25,
    political_party: 'Democrat',
    years_in_office: 'since 2018',
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/e/ea/Joe_Morelle_official_photo_%28cropped_2%29.jpg'
)
c26 = CongressionalMember.create(
    name: 'Brian Higgins',
    bio: 'Brian Higgins is a member of the United States House of Representatives serving New York`s 26th congressional district, which includes portions of Erie and Niagara Counties.

    Widely accepted as the principal architect of waterfront development in Buffalo and Western New York, Brian led the fight for a quarter-billion dollar federal relicensing settlement from the New York Power Authority that continues to finance the transformation of Buffalo`s long-neglected Inner and Outer Harbor waterfront areas.  In our nation`s capital, Brian is an advocate for policies important to our regional and national economies.  Brian is an avowed supporter of increased funding for biomedical research an area creating jobs throughout the Buffalo Niagara Medical Campus and remains a strong voice for robust infrastructure investment, for “nation building here at home.” 
    
    In the 117th Congress, Brian serves on the House Committee on Ways and Means, where he also serves as a Member of the Subcommittees on Health, Trade, and Social Security. In addition, Brian currently serves as a member of the House Committee on the Budget. Brian is a Co-Chair of the Northern Border Caucus, from which he advocates for federal policies that recognize the unique needs of northern border communities efforts which serve to strengthen economic and security ties with our Canadian neighbors. Brian also serves as one of four Co-Chairs of the bipartisan House Cancer Caucus, and as a Co-Chair of the Revitalizing Older Cities Caucus. Additionally, Brian is a member of the Great Lakes Task Force, the House Manufacturing Caucus, and the Northeast-Midwest Congressional Coalition.
    
    Brian has traveled extensively through some of the most volatile regions in the world. In so doing, he has met with world leaders to promote peace in Northern Ireland, the Middle East, South Asia and Africa, including Darfur, Afghanistan and Iraq.
    
    Prior to his election to the House, Brian made his career serving in state and local elective office, as well as in education. Brian served as an instructor in the History and Economics departments at SUNY Buffalo State College, where he taught a course of his own design entitled, “The Economic History of Buffalo & Western New York.” A graduate of Buffalo State College, Brian also earned an advanced degree in Public Policy and Administration from Harvard University`s John F. Kennedy School of Government. Brian has been awarded an honorary Doctorate degree in Humane Letters from Daemen College, and an honorary Doctorate degree in Laws from Medaille College.',
    districtNUM: 26,
    political_party: 'Democrat',
    years_in_office: 'since 2005',
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/2/2c/Brian_Higgins_official_photo.jpg'
)
c27 = CongressionalMember.create(
    name: 'Chris Jacobs',
    bio: 'Congressman Chris Jacobs was elected to the 116th Congress in July of 2020. He proudly represents New York`s 27th Congressional District encompassing Erie, Niagara, Ontario, Orleans, Wyoming, Livingston, Genesee, and Monroe counties.

 

    He is currently serving on the House Committee on Agriculture and the House Committee on the Budget for the 117th Congress.
    
     
    
    Prior to serving in the House of Representatives, Chris served as a New York State Senator, Erie County Clerk, as a member of the Buffalo School Board. After college, Chris` first job was working in Washington, DC for HUD Secretary Jack Kemp, the former Buffalo Congressman and Buffalo Bills Quarterback. Chris also founded the BISON Scholarship Fund to promote educational opportunity for Western New York students.
    
     
    
    Chris is also a small business owner, working to revitalize Western New York communities and provide spaces for other small businesses to thrive. He is a graduate of Boston College, American University Business School, and SUNY Buffalo Law School.
    
     
    
    Chris currently resides in Orchard Park, New York, with his wife Martina and his daughter Anna.',
    districtNUM: 27,
    political_party: 'Republican',
    years_in_office: 'since 2020',
    image_url: 'https://upload.wikimedia.org/wikipedia/commons/6/62/Chris_Jacobs_117th_Congress.jpeg'
)


# USERS
puts '✅ Seeding users data...'

u1 = User.create(name: 'Eric Xiao', email: 'es.xiao93@gmail.com', username: 'es.xiao93', password: 'password', district: 1, admin: true, congressional_member: c1)
u2 = User.create(name: 'Joe Shin', email: 'joe123@gmail.com', username: 'joe123', password: 'password', district: 2, admin: false, congressional_member: c2)


# PETITIONS
puts '✅ Seeding petitions data...'

p1 = Petition.create(title: 'DO THIS NOW1', description: 'please do this now or the world will end1', signature: 0, congressional_member: c1)
p2 = Petition.create(title: 'DO THIS NOW2', description: 'please do this now or the world will end2', signature: 0, congressional_member: c1)
p3 = Petition.create(title: 'DO THIS NOW3', description: 'please do this now or the world will end3', signature: 0, congressional_member: c2)
p4 = Petition.create(title: 'DO THIS NOW4', description: 'please do this now or the world will end4', signature: 0, congressional_member: c2)
p5 = Petition.create(title: 'DO THIS NOW5', description: 'please do this now or the world will end5', signature: 0, congressional_member: c3)
p6 = Petition.create(title: 'DO THIS NOW6', description: 'please do this now or the world will end6', signature: 0, congressional_member: c3)


# USER PETITIONS
puts '✅ Seeding user petitions data...'

UserPetition.create(user: u1, petition: p1)
UserPetition.create(user: u1, petition: p2)
UserPetition.create(user: u2, petition: p3)
UserPetition.create(user: u2, petition: p4)


# KEY ISSUES
puts '✅ Seeding key_issues data...'

KeyIssue.create(title: 'IMMIGRATION', description: 'DESCRIPTION_TEST1', congressional_member: c1)
KeyIssue.create(title: 'GUN LAWS', description: 'DESCRIPTION_TEST2', congressional_member: c1)
KeyIssue.create(title: 'CLIMATE CHANGE', description: 'DESCRIPTION_TEST3', congressional_member: c2)
KeyIssue.create(title: 'ABORTION', description: 'DESCRIPTION_TEST4', congressional_member: c2)
KeyIssue.create(title: 'EDUCATION', description: 'DESCRIPTION_TEST5', congressional_member: c3)
KeyIssue.create(title: 'NATIONAL SECURITY', description: 'DESCRIPTION_TEST6', congressional_member: c3)


# confirm seed data completed
puts '🌱 Seeding Data Completed!'