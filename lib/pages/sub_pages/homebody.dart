import 'package:flutter/material.dart';
import 'package:newtesting/pages/sub_pages/job_details.dart';

class MainHomeBody extends StatefulWidget {
  final bool isDarkMode;

  const MainHomeBody({Key? key, required this.isDarkMode}) : super(key: key);

  @override
  State<MainHomeBody> createState() => _MainHomeBodyState();
}

class _MainHomeBodyState extends State<MainHomeBody> {
  List<Job> jobs = [
    Job(
      title: 'Software Engineer',
      company: 'Tech Solutions Nepal',
      location: 'Kathmandu, Nepal',
      salary: '\N₨ 80,000 - \N₨ 100,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Data Analyst',
      company: 'Data Vision Pvt Ltd',
      location: 'Pokhara, Nepal',
      salary: '\N₨ 70,000 - \N₨ 90,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Marketing Manager',
      company: 'Brand Innovations',
      location: 'Bharatpur, Nepal',
      salary: '\N₨ 85,000 - \N₨ 105,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'HR Coordinator',
      company: 'People First Solutions',
      location: 'Lalitpur, Nepal',
      salary: '\N₨ 60,000 - \N₨ 80,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Web Developer',
      company: 'WebTech Nepal',
      location: 'Birgunj, Nepal',
      salary: '\N₨ 75,000 - \N₨ 95,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Finance Analyst',
      company: 'Financial Minds Nepal',
      location: 'Dharan, Nepal',
      salary: '\N₨ 65,000 - \N₨ 85,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'UI/UX Designer',
      company: 'Pixel Perfect Creations',
      location: 'Butwal, Nepal',
      salary: '\N₨ 70,000 - \N₨ 90,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Content Writer',
      company: 'WordCraft Nepal',
      location: 'Hetauda, Nepal',
      salary: '\N₨ 55,000 - \N₨ 75,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Sales Manager',
      company: 'SalesPro Nepal',
      location: 'Biratnagar, Nepal',
      salary: '\N₨ 80,000 - \N₨ 100,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Customer Service Representative',
      company: 'CustomerCare Solutions',
      location: 'Itahari, Nepal',
      salary: '\N₨ 45,000 - \N₨ 65,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Accountant',
      company: 'Finance Plus Nepal',
      location: 'Janakpur, Nepal',
      salary: '\N₨ 75,000 - \N₨ 95,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Network Administrator',
      company: 'Connectivity Solutions Ltd',
      location: 'Nepalgunj, Nepal',
      salary: '\N₨ 70,000 - \N₨ 90,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Healthcare Assistant',
      company: 'HealthyLife Hospitals',
      location: 'Dhangadhi, Nepal',
      salary: '\N₨ 60,000 - \N₨ 80,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Legal Advisor',
      company: 'Law & Order Consultants',
      location: 'Biratnagar, Nepal',
      salary: '\N₨ 85,000 - \N₨ 105,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Logistics Coordinator',
      company: 'Swift Logistics Pvt Ltd',
      location: 'Hetauda, Nepal',
      salary: '\N₨ 65,000 - \N₨ 85,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Research Scientist',
      company: 'Science Insights Nepal',
      location: 'Bharatpur, Nepal',
      salary: '\N₨ 90,000 - \N₨ 110,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Electrician',
      company: 'PowerTech Nepal',
      location: 'Butwal, Nepal',
      salary: '\N₨ 55,000 - \N₨ 75,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Quality Assurance Analyst',
      company: 'QualityTech Solutions',
      location: 'Dharan, Nepal',
      salary: '\N₨ 75,000 - \N₨ 95,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Event Coordinator',
      company: 'EventPlan Nepal',
      location: 'Lalitpur, Nepal',
      salary: '\N₨ 50,000 - \N₨ 70,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Travel Consultant',
      company: 'TravelTrek Nepal',
      location: 'Pokhara, Nepal',
      salary: '\N₨ 65,000 - \N₨ 85,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Civil Engineer',
      company: 'Civil Solutions Nepal',
      location: 'Birgunj, Nepal',
      salary: '\N₨ 80,000 - \N₨ 100,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Chef',
      company: 'TasteBuds Restaurants',
      location: 'Butwal, Nepal',
      salary: '\N₨ 70,000 - \N₨ 90,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Mechanical Engineer',
      company: 'MechSolutions Pvt Ltd',
      location: 'Hetauda, Nepal',
      salary: '\N₨ 85,000 - \N₨ 105,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Fashion Designer',
      company: 'Trendy Designs Nepal',
      location: 'Kathmandu, Nepal',
      salary: '\N₨ 60,000 - \N₨ 80,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Photographer',
      company: 'Capture Moments Studio',
      location: 'Pokhara, Nepal',
      salary: '\N₨ 75,000 - \N₨ 95,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Pharmacist',
      company: 'PharmaCare Nepal',
      location: 'Lalitpur, Nepal',
      salary: '\N₨ 65,000 - \N₨ 85,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Fitness Trainer',
      company: 'FitLife Gym',
      location: 'Bharatpur, Nepal',
      salary: '\N₨ 90,000 - \N₨ 110,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Customer Support Representative',
      company: 'ServiceCare Nepal',
      location: 'Biratnagar, Nepal',
      salary: '\N₨ 55,000 - \N₨ 75,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Interior Designer',
      company: 'DesignSense Nepal',
      location: 'Dharan, Nepal',
      salary: '\N₨ 75,000 - \N₨ 95,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Electrician',
      company: 'PowerTech Nepal',
      location: 'Hetauda, Nepal',
      salary: '\N₨ 50,000 - \N₨ 70,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Architect',
      company: 'DesignCraft Nepal',
      location: 'Pokhara, Nepal',
      salary: '\N₨ 80,000 - \N₨ 100,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Human Resources Manager',
      company: 'HR Pro Nepal',
      location: 'Lalitpur, Nepal',
      salary: '\N₨ 70,000 - \N₨ 90,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Electrical Engineer',
      company: 'ElecTech Solutions',
      location: 'Birgunj, Nepal',
      salary: '\N₨ 85,000 - \N₨ 105,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Digital Marketer',
      company: 'DigitalBoost Nepal',
      location: 'Bharatpur, Nepal',
      salary: '\N₨ 60,000 - \N₨ 80,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Graphic Artist',
      company: 'ArtVibe Nepal',
      location: 'Kathmandu, Nepal',
      salary: '\N₨ 75,000 - \N₨ 95,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'IT Support Specialist',
      company: 'TechAssist Nepal',
      location: 'Pokhara, Nepal',
      salary: '\N₨ 65,000 - \N₨ 85,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Insurance Agent',
      company: 'SecureCare Nepal',
      location: 'Lalitpur, Nepal',
      salary: '\N₨ 90,000 - \N₨ 110,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Supply Chain Manager',
      company: 'SupplyChain Solutions Nepal',
      location: 'Biratnagar, Nepal',
      salary: '\N₨ 55,000 - \N₨ 75,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Translator',
      company: 'GlobalSpeak Nepal',
      location: 'Bharatpur, Nepal',
      salary: '\N₨ 75,000 - \N₨ 95,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Veterinarian',
      company: 'PetCare Nepal',
      location: 'Kathmandu, Nepal',
      salary: '\N₨ 50,000 - \N₨ 70,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Content Creator',
      company: 'Creative Minds Nepal',
      location: 'Kathmandu, Nepal',
      salary: '\N₨ 80,000 - \N₨ 100,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Biomedical Engineer',
      company: 'BioTech Innovations',
      location: 'Pokhara, Nepal',
      salary: '\N₨ 70,000 - \N₨ 90,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Fashion Stylist',
      company: 'StyleSense Nepal',
      location: 'Birgunj, Nepal',
      salary: '\N₨ 85,000 - \N₨ 105,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Database Administrator',
      company: 'DataOps Nepal',
      location: 'Bharatpur, Nepal',
      salary: '\N₨ 60,000 - \N₨ 80,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Legal Consultant',
      company: 'LegalEdge Nepal',
      location: 'Kathmandu, Nepal',
      salary: '\N₨ 75,000 - \N₨ 95,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Social Media Manager',
      company: 'SocialConnect Nepal',
      location: 'Pokhara, Nepal',
      salary: '\N₨ 65,000 - \N₨ 85,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Mechanic',
      company: 'AutoCare Nepal',
      location: 'Biratnagar, Nepal',
      salary: '\N₨ 90,000 - \N₨ 110,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Digital Illustrator',
      company: 'ArtTech Studios Nepal',
      location: 'Lalitpur, Nepal',
      salary: '\N₨ 55,000 - \N₨ 75,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Chemical Engineer',
      company: 'ChemTech Nepal',
      location: 'Bharatpur, Nepal',
      salary: '\N₨ 75,000 - \N₨ 95,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Fitness Instructor',
      company: 'FitFam Nepal',
      location: 'Kathmandu, Nepal',
      salary: '\N₨ 50,000 - \N₨ 70,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Bank Teller',
      company: 'Nepal Banking Corporation',
      location: 'Kathmandu, Nepal',
      salary: '\N₨ 50,000 - \N₨ 70,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Financial Analyst',
      company: 'Himalayan Bank Limited',
      location: 'Pokhara, Nepal',
      salary: '\N₨ 80,000 - \N₨ 100,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Loan Officer',
      company: 'Nepal Investment Bank',
      location: 'Biratnagar, Nepal',
      salary: '\N₨ 60,000 - \N₨ 80,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Credit Analyst',
      company: 'Everest Bank Limited',
      location: 'Lalitpur, Nepal',
      salary: '\N₨ 70,000 - \N₨ 90,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Branch Manager',
      company: 'Nabil Bank',
      location: 'Bharatpur, Nepal',
      salary: '\N₨ 90,000 - \N₨ 110,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Office Manager',
      company: 'Peak Solutions Pvt Ltd',
      location: 'Kathmandu, Nepal',
      salary: '\N₨ 80,000 - \N₨ 100,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Executive Assistant',
      company: 'Summit Enterprises',
      location: 'Pokhara, Nepal',
      salary: '\N₨ 55,000 - \N₨ 75,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Human Resources Coordinator',
      company: 'Apex Corporations',
      location: 'Biratnagar, Nepal',
      salary: '\N₨ 65,000 - \N₨ 85,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Accounting Clerk',
      company: 'Elevation Enterprises',
      location: 'Lalitpur, Nepal',
      salary: '\N₨ 45,000 - \N₨ 65,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Receptionist',
      company: 'Zenith Solutions Pvt Ltd',
      location: 'Bharatpur, Nepal',
      salary: '\N₨ 35,000 - \N₨ 55,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Front Desk Receptionist',
      company: 'Himalayan Heights Hotel',
      location: 'Kathmandu, Nepal',
      salary: '\N₨ 40,000 - \N₨ 60,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Hotel Manager',
      company: 'Everest View Hotel',
      location: 'Pokhara, Nepal',
      salary: '\N₨ 90,000 - \N₨ 110,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Housekeeping Supervisor',
      company: 'Annapurna Resort',
      location: 'Biratnagar, Nepal',
      salary: '\N₨ 50,000 - \N₨ 70,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Chef de Partie',
      company: 'Himalayan Kitchen',
      location: 'Lalitpur, Nepal',
      salary: '\N₨ 60,000 - \N₨ 80,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Event Coordinator',
      company: 'Yak & Yeti Hotel',
      location: 'Bharatpur, Nepal',
      salary: '\N₨ 70,000 - \N₨ 90,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'School Administrator',
      company: 'Mount Everest School',
      location: 'Kathmandu, Nepal',
      salary: '\N₨ 70,000 - \N₨ 90,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Teacher (Science)',
      company: 'Himalayan High School',
      location: 'Pokhara, Nepal',
      salary: '\N₨ 60,000 - \N₨ 80,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'School Counselor',
      company: 'Everest Academy',
      location: 'Biratnagar, Nepal',
      salary: '\N₨ 50,000 - \N₨ 70,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
    Job(
      title: 'Office Assistant',
      company: 'Himalayan International School',
      location: 'Lalitpur, Nepal',
      salary: '\N₨ 40,000 - \N₨ 60,000',
      imageUrl:
          'https://media.istockphoto.com/id/184962061/photo/business-towers.jpg?s=612x612&w=0&k=20&c=gLQLQ9lnfW6OnJVe39r516vbZYupOoEPl7P_22Un6EM=',
    ),
    Job(
      title: 'Librarian',
      company: 'Gurkha Public School',
      location: 'Bharatpur, Nepal',
      salary: '\N₨ 45,000 - \N₨ 65,000',
      imageUrl:
          'https://media.istockphoto.com/id/178447404/photo/modern-business-buildings.jpg?s=612x612&w=0&k=20&c=MOG9lvRz7WjsVyW3IiQ0srEzpaBPDcc7qxYsBCvAUJs=',
    ),
  ];

  Set<Job> favoriteJobs = Set<Job>();
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          searchQuery = value.toLowerCase();
                        });
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search job names',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.filter_list),
                    onPressed: () {
                      // Handle filter icon press
                      // Implement filter logic here
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 0, 8),
            child: Text(
              'Recent Jobs',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Expanded(
            child: ListView.builder(
              itemCount: jobs.length,
              itemBuilder: (context, index) {
                Job currentJob = jobs[index];
                bool isFavorite = favoriteJobs.contains(currentJob);
                bool isJobVisible =
                    currentJob.title.toLowerCase().contains(searchQuery);

                return isJobVisible
                    ? InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => JobDetailPage(
                                title: jobs[index].title,
                                company: jobs[index].company,
                                location: jobs[index].location,
                                salary: jobs[index].salary,
                                imageUrl: jobs[index].imageUrl,
                              ),
                            ),
                          );
                        },
                        child: Card(
                          elevation: 4.0,
                          margin: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 110.0,
                                      height: 110,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              jobs[index].imageUrl),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            jobs[index].title,
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(height: 8.0),
                                          Text(jobs[index].company),
                                          Text(jobs[index].location),
                                          Text(jobs[index].salary),
                                        ],
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      isFavorite
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: isFavorite ? Colors.red : null,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        if (isFavorite) {
                                          favoriteJobs.remove(currentJob);
                                        } else {
                                          favoriteJobs.add(currentJob);
                                        }
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    : SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Job {
  final String title;
  final String company;
  final String location;
  final String salary;
  final String imageUrl;

  Job({
    required this.title,
    required this.company,
    required this.location,
    required this.salary,
    required this.imageUrl,
  });
}
