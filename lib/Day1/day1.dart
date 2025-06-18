void main() {
  Map<String, dynamic>? participants;

  participants = {"Name": "Rama", "Age": 10, "Address": "Belbari"};

  if (participants.isNotEmpty && participants.containsKey("Address")) {
    print("Participants is not empty.");
    participants.forEach((key, value) {
      print(
        "${participants!["Name"]} : ${participants["Age"]} : ${participants["Address"]}",
      );
    });
  } else {
    print("Participants is empty.");
  }
}