.class public Lcom/opay/face/common/util/TraceUtils;
.super Ljava/lang/Object;
.source "TraceUtils.java"


# static fields
.field public static final a:Ljava/lang/String; = "TraceUtils"

.field public static b:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 2
    .line 3
    const-class v1, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 10
    .line 11
    sput-object v0, Lcom/opay/face/common/util/TraceUtils;->b:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/opay/face/common/config/OAppConfig;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/opay/face/common/util/TraceUtils;->g(Lcom/opay/face/common/config/OAppConfig;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static b(Ljava/util/List;Lcom/opay/face/common/config/OAppConfig;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/Pair;",
            ">;",
            "Lcom/opay/face/common/config/OAppConfig;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/opay/face/common/config/OAppConfig;->getExtraMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    new-instance v3, Lkotlin/Pair;

    .line 34
    .line 35
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Ljava/lang/String;

    .line 40
    .line 41
    invoke-direct {v3, v2, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p1}, Lcom/opay/face/common/config/OAppConfig;->isUseInternalUpload()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    new-instance v0, Lkotlin/Pair;

    .line 55
    .line 56
    const-string v1, "face_business"

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/opay/face/common/config/OAppConfig;->getFaceBusiness()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    new-instance v0, Lkotlin/Pair;

    .line 69
    .line 70
    const-string v1, "face_token"

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/opay/face/common/config/OAppConfig;->getFaceToken()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    new-instance v0, Lkotlin/Pair;

    .line 83
    .line 84
    const-string v1, "face_request_id"

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/opay/face/common/config/OAppConfig;->getFaceRequestId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    :cond_2
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/opay/face/common/util/TraceUtils;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static d()Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;
    .locals 1

    .line 1
    sget-object v0, Lcom/opay/face/common/util/TraceUtils;->b:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 2
    .line 3
    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/opay/face/common/util/TraceUtils;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/opay/face/common/util/TraceUtils;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic g(Lcom/opay/face/common/config/OAppConfig;Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lq3a;->r:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "end"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "end.bin"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lgz5;->i(Ljava/lang/String;)[B

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lcom/opay/face/common/config/OAppConfig;->isUseInternalUpload()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/opay/face/common/config/OAppConfig;->getFaceRequestId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/opay/face/common/config/OAppConfig;->getTraceId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :goto_0
    new-instance v2, Lcom/opay/face/common/net/model/EventReq;

    .line 57
    .line 58
    invoke-direct {v2}, Lcom/opay/face/common/net/model/EventReq;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v3, "Face_end"

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Lcom/opay/face/common/net/model/EventReq;->setEventCode(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v1}, Lcom/opay/face/common/net/model/EventReq;->setEventId(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v1, ""

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Lcom/opay/face/common/net/model/EventReq;->setDataType(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/opay/face/common/config/OAppConfig;->getFaceToken()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v2, v3}, Lcom/opay/face/common/net/model/EventReq;->setFaceToken(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/opay/face/common/config/OAppConfig;->getTraceId()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v2, v3}, Lcom/opay/face/common/net/model/EventReq;->setTraceId(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance v3, Lcom/opay/face/common/net/model/EventData;

    .line 89
    .line 90
    invoke-direct {v3}, Lcom/opay/face/common/net/model/EventData;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/opay/face/common/config/OAppConfig;->getBusiness()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v3, v4}, Lcom/opay/face/common/net/model/EventData;->setBusiness(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, p1}, Lcom/opay/face/common/net/model/EventData;->setCode(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const/16 v4, 0x3e8

    .line 104
    .line 105
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_1

    .line 114
    .line 115
    sget-object v1, Lcom/opay/face/common/util/TraceUtils;->g:Ljava/lang/String;

    .line 116
    .line 117
    :cond_1
    invoke-virtual {v3, v1}, Lcom/opay/face/common/net/model/EventData;->setStr(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-static {}, Lf5a;->c()Lf5a;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Lf5a;->e()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {v3, p1}, Lcom/opay/face/common/net/model/EventData;->setSdk_version(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/opay/face/common/config/OAppConfig;->getFaceBusiness()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {v3, p0}, Lcom/opay/face/common/net/model/EventData;->setFace_business(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance p0, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .line 142
    .line 143
    new-instance p1, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    new-instance v0, Lcom/opay/face/phoneface/model/OFaceImage;

    .line 152
    .line 153
    invoke-direct {v0}, Lcom/opay/face/phoneface/model/OFaceImage;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v1, "END"

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Lcom/opay/face/phoneface/model/OFaceImage;->setName(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, p1}, Lcom/opay/face/phoneface/model/OFaceImage;->setImage(Ljava/util/List;)V

    .line 162
    .line 163
    .line 164
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3, p0}, Lcom/opay/face/common/net/model/EventData;->setImages(Ljava/util/List;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v3}, Lcom/opay/face/common/net/model/EventReq;->setData(Lcom/opay/face/common/net/model/EventData;)V

    .line 171
    .line 172
    .line 173
    invoke-static {}, Lv3a;->f()Lv3a;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-virtual {p0, v2}, Lv3a;->p(Lcom/opay/face/common/net/model/EventReq;)V

    .line 178
    .line 179
    .line 180
    :cond_2
    return-void
.end method

.method public static h(Lcom/opay/face/common/model/LiveTraceResult;Lcom/opay/face/common/config/OAppConfig;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/opay/face/common/util/TraceUtils;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/opay/face/common/model/LiveTraceResult;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/opay/face/common/util/TraceUtils;->b:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lkotlin/Pair;

    .line 22
    .line 23
    const-string v2, "trace_id"

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/opay/face/common/config/OAppConfig;->getTraceId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    new-instance v1, Lkotlin/Pair;

    .line 36
    .line 37
    invoke-static {}, Lf5a;->c()Lf5a;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lf5a;->e()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, "sdk_version"

    .line 46
    .line 47
    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    new-instance v1, Lkotlin/Pair;

    .line 54
    .line 55
    const-string v2, "code"

    .line 56
    .line 57
    iget-object v3, p0, Lcom/opay/face/common/model/LiveTraceResult;->a:Ljava/lang/String;

    .line 58
    .line 59
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    new-instance v1, Lkotlin/Pair;

    .line 66
    .line 67
    const-string v2, "msg"

    .line 68
    .line 69
    iget-object v3, p0, Lcom/opay/face/common/model/LiveTraceResult;->b:Ljava/lang/String;

    .line 70
    .line 71
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    new-instance v1, Lkotlin/Pair;

    .line 78
    .line 79
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    const-string v3, "camera_num"

    .line 88
    .line 89
    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    new-instance v1, Lkotlin/Pair;

    .line 96
    .line 97
    const-string v2, "business"

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/opay/face/common/config/OAppConfig;->getBusiness()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    new-instance v1, Lkotlin/Pair;

    .line 110
    .line 111
    const-string v2, "logs"

    .line 112
    .line 113
    iget-object v3, p0, Lcom/opay/face/common/model/LiveTraceResult;->d:Ljava/lang/String;

    .line 114
    .line 115
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    new-instance v1, Lkotlin/Pair;

    .line 122
    .line 123
    const-string v2, "sec_log"

    .line 124
    .line 125
    iget-object v3, p0, Lcom/opay/face/common/model/LiveTraceResult;->c:Ljava/lang/String;

    .line 126
    .line 127
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    new-instance v1, Lkotlin/Pair;

    .line 134
    .line 135
    iget v2, p0, Lcom/opay/face/common/model/LiveTraceResult;->f:I

    .line 136
    .line 137
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    const-string v3, "start_volume"

    .line 142
    .line 143
    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    new-instance v1, Lkotlin/Pair;

    .line 150
    .line 151
    iget v2, p0, Lcom/opay/face/common/model/LiveTraceResult;->g:I

    .line 152
    .line 153
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    const-string v3, "end_volume"

    .line 158
    .line 159
    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    new-instance v1, Lkotlin/Pair;

    .line 166
    .line 167
    iget v2, p0, Lcom/opay/face/common/model/LiveTraceResult;->e:I

    .line 168
    .line 169
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    const-string v3, "open_camera_id"

    .line 174
    .line 175
    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    new-instance v1, Lkotlin/Pair;

    .line 182
    .line 183
    iget v2, p0, Lcom/opay/face/common/model/LiveTraceResult;->h:I

    .line 184
    .line 185
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    const-string v3, "live_type"

    .line 190
    .line 191
    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    new-instance v1, Lkotlin/Pair;

    .line 198
    .line 199
    iget-boolean p0, p0, Lcom/opay/face/common/model/LiveTraceResult;->j:Z

    .line 200
    .line 201
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    const-string v2, "show_open_light"

    .line 206
    .line 207
    invoke-direct {v1, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    invoke-static {v0, p1}, Lcom/opay/face/common/util/TraceUtils;->b(Ljava/util/List;Lcom/opay/face/common/config/OAppConfig;)V

    .line 214
    .line 215
    .line 216
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 217
    .line 218
    .line 219
    move-result p0

    .line 220
    new-array p0, p0, [Lkotlin/Pair;

    .line 221
    .line 222
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    check-cast p0, [Lkotlin/Pair;

    .line 227
    .line 228
    sget-object p1, Lcom/opay/face/common/util/TraceUtils;->b:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 229
    .line 230
    const-string v0, "Dynamic_living_detection_face"

    .line 231
    .line 232
    invoke-interface {p1, v0, p0}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;->action(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 233
    .line 234
    .line 235
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/opay/face/common/util/TraceUtils;->b:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lkotlin/Pair;

    .line 6
    .line 7
    const-string v2, "trace_id"

    .line 8
    .line 9
    sget-object v3, Lcom/opay/face/common/util/TraceUtils;->d:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lkotlin/Pair;

    .line 15
    .line 16
    invoke-static {}, Lf5a;->c()Lf5a;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lf5a;->e()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, "sdk_version"

    .line 25
    .line 26
    invoke-direct {v2, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    new-instance v3, Lkotlin/Pair;

    .line 30
    .line 31
    const-string v4, "code"

    .line 32
    .line 33
    invoke-direct {v3, v4, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    new-instance p1, Lkotlin/Pair;

    .line 37
    .line 38
    const-string v4, "msg"

    .line 39
    .line 40
    invoke-direct {p1, v4, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    new-instance p2, Lkotlin/Pair;

    .line 44
    .line 45
    const-string v4, "business"

    .line 46
    .line 47
    sget-object v5, Lcom/opay/face/common/util/TraceUtils;->c:Ljava/lang/String;

    .line 48
    .line 49
    invoke-direct {p2, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const/4 v4, 0x5

    .line 53
    new-array v4, v4, [Lkotlin/Pair;

    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    aput-object v1, v4, v5

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    aput-object v2, v4, v1

    .line 60
    .line 61
    const/4 v1, 0x2

    .line 62
    aput-object v3, v4, v1

    .line 63
    .line 64
    const/4 v1, 0x3

    .line 65
    aput-object p1, v4, v1

    .line 66
    .line 67
    const/4 p1, 0x4

    .line 68
    aput-object p2, v4, p1

    .line 69
    .line 70
    invoke-interface {v0, p0, v4}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;->action(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/opay/face/common/config/OAppConfig;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/opay/face/common/util/TraceUtils;->b:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lkotlin/Pair;

    .line 13
    .line 14
    const-string v2, "trace_id"

    .line 15
    .line 16
    invoke-virtual {p4}, Lcom/opay/face/common/config/OAppConfig;->getTraceId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    new-instance v1, Lkotlin/Pair;

    .line 27
    .line 28
    invoke-static {}, Lf5a;->c()Lf5a;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lf5a;->e()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "sdk_version"

    .line 37
    .line 38
    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    new-instance v1, Lkotlin/Pair;

    .line 45
    .line 46
    const-string v2, "code"

    .line 47
    .line 48
    invoke-direct {v1, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    new-instance p1, Lkotlin/Pair;

    .line 55
    .line 56
    const-string v1, "msg"

    .line 57
    .line 58
    invoke-direct {p1, v1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    new-instance p1, Lkotlin/Pair;

    .line 65
    .line 66
    const-string p2, "business"

    .line 67
    .line 68
    invoke-virtual {p4}, Lcom/opay/face/common/config/OAppConfig;->getBusiness()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-direct {p1, p2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    new-instance p1, Lkotlin/Pair;

    .line 79
    .line 80
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    const-string v1, "camera_num"

    .line 89
    .line 90
    invoke-direct {p1, v1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    new-instance p1, Lkotlin/Pair;

    .line 97
    .line 98
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    const-string p3, "open_camera_id"

    .line 103
    .line 104
    invoke-direct {p1, p3, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    invoke-static {v0, p4}, Lcom/opay/face/common/util/TraceUtils;->b(Ljava/util/List;Lcom/opay/face/common/config/OAppConfig;)V

    .line 111
    .line 112
    .line 113
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    new-array p1, p1, [Lkotlin/Pair;

    .line 118
    .line 119
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, [Lkotlin/Pair;

    .line 124
    .line 125
    sget-object p2, Lcom/opay/face/common/util/TraceUtils;->b:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 126
    .line 127
    invoke-interface {p2, p0, p1}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;->action(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 128
    .line 129
    .line 130
    :cond_0
    return-void
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;Lcom/opay/face/common/config/OAppConfig;)V
    .locals 1

    .line 1
    const-string v0, "Dynamic_living_detection_face"

    .line 2
    .line 3
    invoke-static {v0, p0, p1, p2}, Lcom/opay/face/common/util/TraceUtils;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/opay/face/common/config/OAppConfig;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/opay/face/common/config/OAppConfig;)V
    .locals 6

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move v3, p3

    .line 6
    move-object v4, p4

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/opay/face/common/util/TraceUtils;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/opay/face/common/config/OAppConfig;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/opay/face/common/config/OAppConfig;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/opay/face/common/util/TraceUtils;->b:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p4, :cond_1

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lkotlin/Pair;

    .line 13
    .line 14
    const-string v2, "trace_id"

    .line 15
    .line 16
    invoke-virtual {p4}, Lcom/opay/face/common/config/OAppConfig;->getTraceId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    new-instance v1, Lkotlin/Pair;

    .line 27
    .line 28
    invoke-static {}, Lf5a;->c()Lf5a;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lf5a;->e()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "sdk_version"

    .line 37
    .line 38
    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    new-instance v1, Lkotlin/Pair;

    .line 45
    .line 46
    const-string v2, "code"

    .line 47
    .line 48
    invoke-direct {v1, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    new-instance p1, Lkotlin/Pair;

    .line 55
    .line 56
    const-string v1, "msg"

    .line 57
    .line 58
    invoke-direct {p1, v1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    new-instance p1, Lkotlin/Pair;

    .line 65
    .line 66
    const-string p2, "business"

    .line 67
    .line 68
    invoke-virtual {p4}, Lcom/opay/face/common/config/OAppConfig;->getBusiness()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-direct {p1, p2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    new-instance p1, Lkotlin/Pair;

    .line 79
    .line 80
    invoke-virtual {p4}, Lcom/opay/face/common/config/OAppConfig;->isNewUI()Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    const-string v1, "new_ui"

    .line 89
    .line 90
    invoke-direct {p1, v1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    new-instance p1, Lkotlin/Pair;

    .line 97
    .line 98
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    const-string p3, "state"

    .line 103
    .line 104
    invoke-direct {p1, p3, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_0

    .line 115
    .line 116
    new-instance p1, Lkotlin/Pair;

    .line 117
    .line 118
    const-string p2, "logs"

    .line 119
    .line 120
    invoke-direct {p1, p2, p5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    :cond_0
    invoke-static {v0, p4}, Lcom/opay/face/common/util/TraceUtils;->b(Ljava/util/List;Lcom/opay/face/common/config/OAppConfig;)V

    .line 127
    .line 128
    .line 129
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    new-array p1, p1, [Lkotlin/Pair;

    .line 134
    .line 135
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, [Lkotlin/Pair;

    .line 140
    .line 141
    sget-object p2, Lcom/opay/face/common/util/TraceUtils;->b:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 142
    .line 143
    invoke-interface {p2, p0, p1}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;->action(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 144
    .line 145
    .line 146
    :cond_1
    return-void
.end method

.method public static n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/opay/face/common/config/OAppConfig;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/opay/face/common/util/TraceUtils;->b:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lkotlin/Pair;

    .line 13
    .line 14
    const-string v2, "trace_id"

    .line 15
    .line 16
    invoke-virtual {p3}, Lcom/opay/face/common/config/OAppConfig;->getTraceId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    new-instance v1, Lkotlin/Pair;

    .line 27
    .line 28
    invoke-static {}, Lf5a;->c()Lf5a;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lf5a;->e()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "sdk_version"

    .line 37
    .line 38
    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    new-instance v1, Lkotlin/Pair;

    .line 45
    .line 46
    const-string v2, "code"

    .line 47
    .line 48
    invoke-direct {v1, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    new-instance p1, Lkotlin/Pair;

    .line 55
    .line 56
    const-string v1, "msg"

    .line 57
    .line 58
    invoke-direct {p1, v1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    new-instance p1, Lkotlin/Pair;

    .line 65
    .line 66
    const-string p2, "business"

    .line 67
    .line 68
    invoke-virtual {p3}, Lcom/opay/face/common/config/OAppConfig;->getBusiness()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-direct {p1, p2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    new-instance p1, Lkotlin/Pair;

    .line 79
    .line 80
    invoke-virtual {p3}, Lcom/opay/face/common/config/OAppConfig;->isNewUI()Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    const-string v1, "new_ui"

    .line 89
    .line 90
    invoke-direct {p1, v1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    invoke-static {v0, p3}, Lcom/opay/face/common/util/TraceUtils;->b(Ljava/util/List;Lcom/opay/face/common/config/OAppConfig;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    new-array p1, p1, [Lkotlin/Pair;

    .line 104
    .line 105
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, [Lkotlin/Pair;

    .line 110
    .line 111
    sget-object p2, Lcom/opay/face/common/util/TraceUtils;->b:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 112
    .line 113
    invoke-interface {p2, p0, p1}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;->action(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 114
    .line 115
    .line 116
    :cond_0
    return-void
.end method

.method public static o(Lcom/opay/face/common/model/LiveTraceResult;Lcom/opay/face/common/config/OAppConfig;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/opay/face/common/util/TraceUtils;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/opay/face/common/model/LiveTraceResult;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/opay/face/util/Logs;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/opay/face/common/model/LiveTraceResult;->i:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/opay/face/common/model/LiveTraceResult;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0, p1}, Lcom/opay/face/common/util/TraceUtils;->r(Ljava/lang/String;Lcom/opay/face/common/config/OAppConfig;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object v0, Lcom/opay/face/common/util/TraceUtils;->b:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lkotlin/Pair;

    .line 31
    .line 32
    const-string v2, "trace_id"

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/opay/face/common/config/OAppConfig;->getTraceId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    new-instance v1, Lkotlin/Pair;

    .line 45
    .line 46
    invoke-static {}, Lf5a;->c()Lf5a;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Lf5a;->e()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-string v3, "sdk_version"

    .line 55
    .line 56
    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    new-instance v1, Lkotlin/Pair;

    .line 63
    .line 64
    const-string v2, "code"

    .line 65
    .line 66
    iget-object v3, p0, Lcom/opay/face/common/model/LiveTraceResult;->a:Ljava/lang/String;

    .line 67
    .line 68
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    new-instance v1, Lkotlin/Pair;

    .line 75
    .line 76
    const-string v2, "msg"

    .line 77
    .line 78
    iget-object v3, p0, Lcom/opay/face/common/model/LiveTraceResult;->b:Ljava/lang/String;

    .line 79
    .line 80
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    new-instance v1, Lkotlin/Pair;

    .line 87
    .line 88
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    const-string v3, "camera_num"

    .line 97
    .line 98
    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    new-instance v1, Lkotlin/Pair;

    .line 105
    .line 106
    const-string v2, "business"

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/opay/face/common/config/OAppConfig;->getBusiness()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    new-instance v1, Lkotlin/Pair;

    .line 119
    .line 120
    const-string v2, "logs"

    .line 121
    .line 122
    iget-object v3, p0, Lcom/opay/face/common/model/LiveTraceResult;->d:Ljava/lang/String;

    .line 123
    .line 124
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    new-instance v1, Lkotlin/Pair;

    .line 131
    .line 132
    iget v2, p0, Lcom/opay/face/common/model/LiveTraceResult;->f:I

    .line 133
    .line 134
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    const-string v3, "start_volume"

    .line 139
    .line 140
    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    new-instance v1, Lkotlin/Pair;

    .line 147
    .line 148
    iget v2, p0, Lcom/opay/face/common/model/LiveTraceResult;->g:I

    .line 149
    .line 150
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    const-string v3, "end_volume"

    .line 155
    .line 156
    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    new-instance v1, Lkotlin/Pair;

    .line 163
    .line 164
    iget v2, p0, Lcom/opay/face/common/model/LiveTraceResult;->e:I

    .line 165
    .line 166
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    const-string v3, "open_camera_id"

    .line 171
    .line 172
    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    new-instance v1, Lkotlin/Pair;

    .line 179
    .line 180
    iget v2, p0, Lcom/opay/face/common/model/LiveTraceResult;->h:I

    .line 181
    .line 182
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    const-string v3, "live_type"

    .line 187
    .line 188
    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    new-instance v1, Lkotlin/Pair;

    .line 195
    .line 196
    iget-boolean p0, p0, Lcom/opay/face/common/model/LiveTraceResult;->j:Z

    .line 197
    .line 198
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    const-string v2, "show_open_light"

    .line 203
    .line 204
    invoke-direct {v1, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    invoke-static {v0, p1}, Lcom/opay/face/common/util/TraceUtils;->b(Ljava/util/List;Lcom/opay/face/common/config/OAppConfig;)V

    .line 211
    .line 212
    .line 213
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    new-array p0, p0, [Lkotlin/Pair;

    .line 218
    .line 219
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    check-cast p0, [Lkotlin/Pair;

    .line 224
    .line 225
    sget-object p1, Lcom/opay/face/common/util/TraceUtils;->b:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 226
    .line 227
    const-string v0, "Dynamic_living_detection_face"

    .line 228
    .line 229
    invoke-interface {p1, v0, p0}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;->action(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 230
    .line 231
    .line 232
    :cond_1
    return-void
.end method

.method public static p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/opay/face/common/util/TraceUtils;->b:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lkotlin/Pair;

    .line 6
    .line 7
    const-string v2, "call_code"

    .line 8
    .line 9
    invoke-direct {v1, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    new-array p1, p1, [Lkotlin/Pair;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object v1, p1, v2

    .line 17
    .line 18
    invoke-interface {v0, p0, p1}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;->action(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public static q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/opay/face/common/config/OAppConfig;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/opay/face/common/util/TraceUtils;->b:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lkotlin/Pair;

    .line 13
    .line 14
    const-string v2, "trace_id"

    .line 15
    .line 16
    invoke-virtual {p5}, Lcom/opay/face/common/config/OAppConfig;->getTraceId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    new-instance v1, Lkotlin/Pair;

    .line 27
    .line 28
    invoke-static {}, Lf5a;->c()Lf5a;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lf5a;->e()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "sdk_version"

    .line 37
    .line 38
    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    new-instance v1, Lkotlin/Pair;

    .line 45
    .line 46
    const-string v2, "code"

    .line 47
    .line 48
    invoke-direct {v1, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    new-instance p1, Lkotlin/Pair;

    .line 55
    .line 56
    const-string v1, "msg"

    .line 57
    .line 58
    invoke-direct {p1, v1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    new-instance p1, Lkotlin/Pair;

    .line 65
    .line 66
    const-string p2, "business"

    .line 67
    .line 68
    invoke-virtual {p5}, Lcom/opay/face/common/config/OAppConfig;->getBusiness()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-direct {p1, p2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    new-instance p1, Lkotlin/Pair;

    .line 79
    .line 80
    const-string p2, "upload_time"

    .line 81
    .line 82
    invoke-direct {p1, p2, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    new-instance p1, Lkotlin/Pair;

    .line 89
    .line 90
    const-string p2, "logs"

    .line 91
    .line 92
    invoke-direct {p1, p2, p4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    invoke-static {v0, p5}, Lcom/opay/face/common/util/TraceUtils;->b(Ljava/util/List;Lcom/opay/face/common/config/OAppConfig;)V

    .line 99
    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    new-array p1, p1, [Lkotlin/Pair;

    .line 106
    .line 107
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, [Lkotlin/Pair;

    .line 112
    .line 113
    sget-object p2, Lcom/opay/face/common/util/TraceUtils;->b:Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;

    .line 114
    .line 115
    invoke-interface {p2, p0, p1}, Lteam/opay/swarmfoundation/data/ICombinationDataGenerator;->action(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 116
    .line 117
    .line 118
    :cond_0
    return-void
.end method

.method public static r(Ljava/lang/String;Lcom/opay/face/common/config/OAppConfig;)V
    .locals 1

    .line 1
    new-instance v0, Lsqe;

    .line 2
    .line 3
    invoke-direct {v0, p1, p0}, Lsqe;-><init>(Lcom/opay/face/common/config/OAppConfig;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/opay/face/util/ExecutorServiceUtils;->a(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static s(Ljava/util/List;Lcom/opay/face/common/config/OAppConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opay/face/phoneface/model/OFaceImage;",
            ">;",
            "Lcom/opay/face/common/config/OAppConfig;",
            ")V"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/opay/face/common/config/OAppConfig;->isUseInternalUpload()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/opay/face/common/config/OAppConfig;->getFaceRequestId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/opay/face/common/config/OAppConfig;->getTraceId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    new-instance v1, Lcom/opay/face/common/net/model/EventReq;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/opay/face/common/net/model/EventReq;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "Face_motion"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/opay/face/common/net/model/EventReq;->setEventCode(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lcom/opay/face/common/net/model/EventReq;->setEventId(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v0, ""

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lcom/opay/face/common/net/model/EventReq;->setDataType(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/opay/face/common/config/OAppConfig;->getFaceToken()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v1, v0}, Lcom/opay/face/common/net/model/EventReq;->setFaceToken(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/opay/face/common/config/OAppConfig;->getTraceId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v1, v0}, Lcom/opay/face/common/net/model/EventReq;->setTraceId(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/opay/face/common/net/model/EventData;

    .line 52
    .line 53
    invoke-direct {v0}, Lcom/opay/face/common/net/model/EventData;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/opay/face/common/config/OAppConfig;->getBusiness()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v0, v2}, Lcom/opay/face/common/net/model/EventData;->setBusiness(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/16 v2, 0x3e8

    .line 64
    .line 65
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v0, v2}, Lcom/opay/face/common/net/model/EventData;->setCode(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sget-object v2, Lcom/opay/face/common/util/TraceUtils;->g:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Lcom/opay/face/common/net/model/EventData;->setStr(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {}, Lf5a;->c()Lf5a;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lf5a;->e()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v0, v2}, Lcom/opay/face/common/net/model/EventData;->setSdk_version(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p0}, Lcom/opay/face/common/net/model/EventData;->setImages(Ljava/util/List;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/opay/face/common/config/OAppConfig;->getFaceBusiness()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {v0, p0}, Lcom/opay/face/common/net/model/EventData;->setFace_business(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v0}, Lcom/opay/face/common/net/model/EventReq;->setData(Lcom/opay/face/common/net/model/EventData;)V

    .line 99
    .line 100
    .line 101
    invoke-static {}, Lv3a;->f()Lv3a;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p0, v1}, Lv3a;->p(Lcom/opay/face/common/net/model/EventReq;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public static t(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/opay/face/common/util/TraceUtils;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static u(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/opay/face/common/util/TraceUtils;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/opay/face/common/util/TraceUtils;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/opay/face/common/util/TraceUtils;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static x(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/opay/face/common/util/TraceUtils;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
