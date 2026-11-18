.class public final Lteam/opay/pay/transfer/RemarkConfigSwitcher;
.super Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;
.source "RemarkConfigSwitcher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/transfer/RemarkConfigSwitcher$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher<",
        "Lteam/opay/pay/transfer/RemarkConfigSwitcher;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u0000 \u00132\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0013B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\nH\u0016J \u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0008\u0010\u0011\u001a\u00020\rH\u0016J\u0008\u0010\u0012\u001a\u00020\u0000H\u0016R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lteam/opay/pay/transfer/RemarkConfigSwitcher;",
        "Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;",
        "<init>",
        "()V",
        "remarks",
        "",
        "Lteam/opay/pay/transfer/RemarkConfigData;",
        "audltRemarks",
        "Lteam/opay/pay/transfer/AudltRemarkConfigData;",
        "defaultValue",
        "Lorg/json/JSONObject;",
        "getConfigDataObject",
        "title",
        "",
        "inputType",
        "isSelect",
        "",
        "featureName",
        "getValue",
        "Companion",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lteam/opay/pay/transfer/RemarkConfigSwitcher$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final audltRemarks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/AudltRemarkConfigData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final remarks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/transfer/RemarkConfigData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/transfer/RemarkConfigSwitcher$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/transfer/RemarkConfigSwitcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/transfer/RemarkConfigSwitcher;->Companion:Lteam/opay/pay/transfer/RemarkConfigSwitcher$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lteam/opay/pay/transfer/RemarkConfigSwitcher;->remarks:Ljava/util/List;

    .line 9
    .line 10
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lteam/opay/pay/transfer/RemarkConfigSwitcher;->audltRemarks:Ljava/util/List;

    .line 15
    .line 16
    return-void
.end method

.method public static final synthetic access$getAudltRemarks$p(Lteam/opay/pay/transfer/RemarkConfigSwitcher;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/transfer/RemarkConfigSwitcher;->audltRemarks:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getRemarks$p(Lteam/opay/pay/transfer/RemarkConfigSwitcher;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/transfer/RemarkConfigSwitcher;->remarks:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method private final getConfigDataObject(Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "title"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    const-string p1, "inputType"

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    const-string p1, "isSelect"

    .line 17
    .line 18
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    return-object v0
.end method


# virtual methods
.method public defaultValue()Lorg/json/JSONObject;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sget v1, Lteam/opay/pay/R$string;->osdk_remark_1:I

    .line 7
    .line 8
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x1

    .line 13
    const-string v3, "0"

    .line 14
    .line 15
    invoke-direct {p0, v1, v3, v2}, Lteam/opay/pay/transfer/RemarkConfigSwitcher;->getConfigDataObject(Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 20
    .line 21
    .line 22
    sget v1, Lteam/opay/pay/R$string;->osdk_remark_2:I

    .line 23
    .line 24
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0, v1, v3, v2}, Lteam/opay/pay/transfer/RemarkConfigSwitcher;->getConfigDataObject(Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 34
    .line 35
    .line 36
    sget v1, Lteam/opay/pay/R$string;->osdk_remark_3:I

    .line 37
    .line 38
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {p0, v1, v3, v2}, Lteam/opay/pay/transfer/RemarkConfigSwitcher;->getConfigDataObject(Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 47
    .line 48
    .line 49
    sget v1, Lteam/opay/pay/R$string;->osdk_remark_4:I

    .line 50
    .line 51
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-direct {p0, v1, v3, v2}, Lteam/opay/pay/transfer/RemarkConfigSwitcher;->getConfigDataObject(Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 60
    .line 61
    .line 62
    sget v1, Lteam/opay/pay/R$string;->osdk_remark_5:I

    .line 63
    .line 64
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-direct {p0, v1, v3, v2}, Lteam/opay/pay/transfer/RemarkConfigSwitcher;->getConfigDataObject(Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 73
    .line 74
    .line 75
    sget v1, Lteam/opay/pay/R$string;->osdk_remark_6:I

    .line 76
    .line 77
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-direct {p0, v1, v3, v2}, Lteam/opay/pay/transfer/RemarkConfigSwitcher;->getConfigDataObject(Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 86
    .line 87
    .line 88
    sget v1, Lteam/opay/pay/R$string;->osdk_remark_7:I

    .line 89
    .line 90
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-direct {p0, v1, v3, v2}, Lteam/opay/pay/transfer/RemarkConfigSwitcher;->getConfigDataObject(Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 99
    .line 100
    .line 101
    sget v1, Lteam/opay/pay/R$string;->osdk_remark_8:I

    .line 102
    .line 103
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-direct {p0, v1, v3, v2}, Lteam/opay/pay/transfer/RemarkConfigSwitcher;->getConfigDataObject(Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 112
    .line 113
    .line 114
    sget v1, Lteam/opay/pay/R$string;->osdk_remark_9:I

    .line 115
    .line 116
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-direct {p0, v1, v3, v2}, Lteam/opay/pay/transfer/RemarkConfigSwitcher;->getConfigDataObject(Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 125
    .line 126
    .line 127
    sget v1, Lteam/opay/pay/R$string;->osdk_remark_10:I

    .line 128
    .line 129
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-direct {p0, v1, v3, v2}, Lteam/opay/pay/transfer/RemarkConfigSwitcher;->getConfigDataObject(Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 138
    .line 139
    .line 140
    sget v1, Lteam/opay/pay/R$string;->osdk_remark_11:I

    .line 141
    .line 142
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-direct {p0, v1, v3, v2}, Lteam/opay/pay/transfer/RemarkConfigSwitcher;->getConfigDataObject(Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 151
    .line 152
    .line 153
    sget v1, Lteam/opay/pay/R$string;->osdk_remark_12:I

    .line 154
    .line 155
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-direct {p0, v1, v3, v2}, Lteam/opay/pay/transfer/RemarkConfigSwitcher;->getConfigDataObject(Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 164
    .line 165
    .line 166
    sget v1, Lteam/opay/pay/R$string;->osdk_remark_13:I

    .line 167
    .line 168
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-direct {p0, v1, v3, v2}, Lteam/opay/pay/transfer/RemarkConfigSwitcher;->getConfigDataObject(Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 177
    .line 178
    .line 179
    sget v1, Lteam/opay/pay/R$string;->osdk_remark_14:I

    .line 180
    .line 181
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-direct {p0, v1, v3, v2}, Lteam/opay/pay/transfer/RemarkConfigSwitcher;->getConfigDataObject(Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 190
    .line 191
    .line 192
    sget v1, Lteam/opay/pay/R$string;->osdk_remark_15:I

    .line 193
    .line 194
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    const-string v3, "1"

    .line 199
    .line 200
    invoke-direct {p0, v1, v3, v2}, Lteam/opay/pay/transfer/RemarkConfigSwitcher;->getConfigDataObject(Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 205
    .line 206
    .line 207
    new-instance v1, Lorg/json/JSONArray;

    .line 208
    .line 209
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 210
    .line 211
    .line 212
    new-instance v2, Lorg/json/JSONObject;

    .line 213
    .line 214
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 215
    .line 216
    .line 217
    const-string v3, "title"

    .line 218
    .line 219
    const-string v4, "Purchase"

    .line 220
    .line 221
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    .line 223
    .line 224
    const-string v5, "content"

    .line 225
    .line 226
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 230
    .line 231
    .line 232
    new-instance v2, Lorg/json/JSONObject;

    .line 233
    .line 234
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 235
    .line 236
    .line 237
    const-string v4, "Personal"

    .line 238
    .line 239
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    .line 241
    .line 242
    const-string v3, "Personal Transfer"

    .line 243
    .line 244
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 248
    .line 249
    .line 250
    new-instance v2, Lorg/json/JSONObject;

    .line 251
    .line 252
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 253
    .line 254
    .line 255
    const-string v3, "remarks"

    .line 256
    .line 257
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    .line 259
    .line 260
    const-string v0, "audltRemarks"

    .line 261
    .line 262
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    .line 264
    .line 265
    return-object v2
.end method

.method public featureName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ng_feature_transfer_remark_config"

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/transfer/RemarkConfigSwitcher;->getValue()Lteam/opay/pay/transfer/RemarkConfigSwitcher;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lteam/opay/pay/transfer/RemarkConfigSwitcher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-super {p0}, Lteam/opay/swarmfoundation/contacts/ABTestSwitcher;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lteam/opay/pay/transfer/RemarkConfigSwitcher;

    return-object v0
.end method
