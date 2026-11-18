.class public final Lteam/opay/sme/store/api/EmployeeInfo$Creator;
.super Ljava/lang/Object;
.source "ApiData.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/sme/store/api/EmployeeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lteam/opay/sme/store/api/EmployeeInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lteam/opay/sme/store/api/EmployeeInfo;
    .locals 27

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "parcel"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v10

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v11

    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v12

    .line 48
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v13

    .line 52
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v14

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v15

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v16

    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v17

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v18

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    const/16 v19, 0x0

    .line 77
    .line 78
    if-nez v1, :cond_0

    .line 79
    .line 80
    move-object/from16 v21, v15

    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    goto :goto_1

    .line 84
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .line 92
    .line 93
    move-object/from16 v21, v15

    .line 94
    .line 95
    const/4 v15, 0x0

    .line 96
    :goto_0
    if-eq v15, v1, :cond_1

    .line 97
    .line 98
    move/from16 v22, v1

    .line 99
    .line 100
    sget-object v1, Lteam/opay/sme/store/api/RoleTypeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 101
    .line 102
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    add-int/lit8 v15, v15, 0x1

    .line 110
    .line 111
    move/from16 v1, v22

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    move-object v1, v2

    .line 115
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-nez v2, :cond_2

    .line 120
    .line 121
    const/4 v2, 0x0

    .line 122
    goto :goto_2

    .line 123
    :cond_2
    sget-object v2, Lteam/opay/sme/store/api/PayrollBankInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 124
    .line 125
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    :goto_2
    move-object/from16 v22, v2

    .line 130
    .line 131
    check-cast v22, Lteam/opay/sme/store/api/PayrollBankInfo;

    .line 132
    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_3

    .line 138
    .line 139
    const/16 v23, 0x1

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_3
    const/16 v23, 0x0

    .line 143
    .line 144
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-nez v2, :cond_4

    .line 149
    .line 150
    move-object/from16 v24, v1

    .line 151
    .line 152
    const/4 v1, 0x0

    .line 153
    goto :goto_5

    .line 154
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    new-instance v15, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    .line 162
    .line 163
    move-object/from16 v24, v1

    .line 164
    .line 165
    const/4 v1, 0x0

    .line 166
    :goto_4
    if-eq v1, v2, :cond_5

    .line 167
    .line 168
    move/from16 v25, v2

    .line 169
    .line 170
    sget-object v2, Lteam/opay/sme/store/api/EmployeeBranchInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 171
    .line 172
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    add-int/lit8 v1, v1, 0x1

    .line 180
    .line 181
    move/from16 v2, v25

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_5
    move-object v1, v15

    .line 185
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-eqz v2, :cond_6

    .line 190
    .line 191
    const/16 v25, 0x1

    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_6
    const/16 v25, 0x0

    .line 195
    .line 196
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_7

    .line 201
    .line 202
    const/4 v0, 0x1

    .line 203
    goto :goto_7

    .line 204
    :cond_7
    const/4 v0, 0x0

    .line 205
    :goto_7
    new-instance v26, Lteam/opay/sme/store/api/EmployeeInfo;

    .line 206
    .line 207
    move-object/from16 v2, v26

    .line 208
    .line 209
    move-object/from16 v15, v21

    .line 210
    .line 211
    move-object/from16 v19, v24

    .line 212
    .line 213
    move-object/from16 v20, v22

    .line 214
    .line 215
    move/from16 v21, v23

    .line 216
    .line 217
    move-object/from16 v22, v1

    .line 218
    .line 219
    move/from16 v23, v25

    .line 220
    .line 221
    move/from16 v24, v0

    .line 222
    .line 223
    invoke-direct/range {v2 .. v24}, Lteam/opay/sme/store/api/EmployeeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lteam/opay/sme/store/api/PayrollBankInfo;ZLjava/util/List;ZZ)V

    .line 224
    .line 225
    .line 226
    return-object v26
.end method

.method public final b(I)[Lteam/opay/sme/store/api/EmployeeInfo;
    .locals 0

    .line 1
    new-array p1, p1, [Lteam/opay/sme/store/api/EmployeeInfo;

    .line 2
    .line 3
    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/sme/store/api/EmployeeInfo$Creator;->a(Landroid/os/Parcel;)Lteam/opay/sme/store/api/EmployeeInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/sme/store/api/EmployeeInfo$Creator;->b(I)[Lteam/opay/sme/store/api/EmployeeInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
