class LoginResponse {
    User user;
    String message;
    String statusCode;

    LoginResponse({
        required this.user,
        required this.message,
        required this.statusCode,
    });

    factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        user: User.fromJson(json["user"]),
        message: json["message"],
        statusCode: json["status_code"],
    );

    Map<String, dynamic> toJson() => {
        "user": user.toJson(),
        "message": message,
        "status_code": statusCode,
    };
}

class User {
    int id;
    String token;
    String type;
    String name;
    String employeeId;
    String email;
    String mobile;
    String gender;
    dynamic dob;
    int shift;
    int workLocation;
    String extraWorkStatus;
    String designation;
    int salary;
    String address;
    String postalAddress;
    String workAddress;
    String taxNumber;
    String bankName;
    String ifscCode;
    String bankAccount;
    String upiId;
    String status;
    String photo;
    String sign;
    DateTime createdAt;
    String workLocationName;
    String workLocationAddress;
    String workLocationV4;
    String workLocationV6;
    String workLocationBroadcast;
    String workLocationSubmask;

    User({
        required this.id,
        required this.token,
        required this.type,
        required this.name,
        required this.employeeId,
        required this.email,
        required this.mobile,
        required this.gender,
        required this.dob,
        required this.shift,
        required this.workLocation,
        required this.extraWorkStatus,
        required this.designation,
        required this.salary,
        required this.address,
        required this.postalAddress,
        required this.workAddress,
        required this.taxNumber,
        required this.bankName,
        required this.ifscCode,
        required this.bankAccount,
        required this.upiId,
        required this.status,
        required this.photo,
        required this.sign,
        required this.createdAt,
        required this.workLocationName,
        required this.workLocationAddress,
        required this.workLocationV4,
        required this.workLocationV6,
        required this.workLocationBroadcast,
        required this.workLocationSubmask,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        token: json["token"],
        type: json["type"],
        name: json["name"],
        employeeId: json["employee_id"],
        email: json["email"],
        mobile: json["mobile"],
        gender: json["gender"],
        dob: json["dob"],
        shift: json["shift"],
        workLocation: json["work_location"],
        extraWorkStatus: json["extra_work_status"],
        designation: json["designation"],
        salary: json["salary"],
        address: json["address"],
        postalAddress: json["postal_address"],
        workAddress: json["work_address"],
        taxNumber: json["tax_number"],
        bankName: json["bank_name"],
        ifscCode: json["ifsc_code"],
        bankAccount: json["bank_account"],
        upiId: json["upi_id"],
        status: json["status"],
        photo: json["photo"],
        sign: json["sign"],
        createdAt: DateTime.parse(json["created_at"]),
        workLocationName: json["work_location_name"],
        workLocationAddress: json["work_location_address"],
        workLocationV4: json["work_location_v4"],
        workLocationV6: json["work_location_v6"],
        workLocationBroadcast: json["work_location_broadcast"],
        workLocationSubmask: json["work_location_submask"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "token": token,
        "type": type,
        "name": name,
        "employee_id": employeeId,
        "email": email,
        "mobile": mobile,
        "gender": gender,
        "dob": dob,
        "shift": shift,
        "work_location": workLocation,
        "extra_work_status": extraWorkStatus,
        "designation": designation,
        "salary": salary,
        "address": address,
        "postal_address": postalAddress,
        "work_address": workAddress,
        "tax_number": taxNumber,
        "bank_name": bankName,
        "ifsc_code": ifscCode,
        "bank_account": bankAccount,
        "upi_id": upiId,
        "status": status,
        "photo": photo,
        "sign": sign,
        "created_at": createdAt.toIso8601String(),
        "work_location_name": workLocationName,
        "work_location_address": workLocationAddress,
        "work_location_v4": workLocationV4,
        "work_location_v6": workLocationV6,
        "work_location_broadcast": workLocationBroadcast,
        "work_location_submask": workLocationSubmask,
    };
}