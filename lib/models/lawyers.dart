class LawyerModel {
 
  late String avatar;
  late String name;
  late String category;
  late String about;

  LawyerModel({
    
    required this.avatar,
    required this.name,
    required this.about,
  });
}

final List<LawyerModel> topLawyers = [
  LawyerModel(
    avatar:
        "https://media.istockphoto.com/id/171096044/photo/smiling-judge-holding-file-in-courtroom.jpg?s=612x612&w=0&k=20&c=nnWCNnnm2ZDukXBpK42fibP4TKF2KcXkNhGw3YbuND0=",
    name: "Saida Urman",
    about:
        "Saida is a previous court judge, she started her immigration law consultant career since last 2 years.She works for Immigrants Favourite Portal and manages legal cases in the same field.",
  ),
  LawyerModel(
    avatar:
        "https://media.istockphoto.com/id/104821116/photo/smiling-lawyer-sitting-at-desk-in-office.jpg?s=612x612&w=0&k=20&c=lgsv21HGQYmtXBusPC3TB22OEEjH7xKflQVjliJ1OmQ=",
    name: "Ralph Warren",
    about:
        "Ralp is an Intellectual Property law expert. He is a partner at Tresslo Law Firm. He has more than 19 years of work experience. ",
  ),
  LawyerModel(
    avatar:
        "https://media.istockphoto.com/id/1313002151/photo/portrait-of-a-handsome-businessman.jpg?s=612x612&w=0&k=20&c=QBr87HvXu312ldcv8kMFZHY6PNX6nIS0z3iRROrT3u8=",
    name: "Teodor Sanches",
    about:
        "Teodor has 21 years of experience in divorce, ailmony, prenup and several other  family law cases.He specializes in family and children laws. He  manages his law office with 4 associates and partners.",
  ),
  LawyerModel(
    avatar:
        "https://media.istockphoto.com/id/171096045/photo/smiling-lawyer-sitting-at-laptop-in-office.jpg?s=612x612&w=0&k=20&c=6k-RhV11Llzmx7QX7ByU2CJj-Bic_fioY4z952F_7Yc=",
    name: "Kate Smith",
    about:
        "Kate is a human-rights lawyer.She won many administrative court cases very recently.She is an asociate at People Rights legal tech company and also works as a professor at University of Flua.",
  ),
];
