.class public final Lteam/opay/business/js/hilt/UploadFileRepository;
.super Ljava/lang/Object;
.source "EntryPoint.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lteam/opay/business/js/hilt/UploadFileRepository;",
        "",
        "Lteam/opay/core/http/arch/AppExecutors;",
        "appExecutors",
        "Lqv;",
        "apiService",
        "<init>",
        "(Lteam/opay/core/http/arch/AppExecutors;Lqv;)V",
        "Lteam/opay/business/js/api/PrivacyFileRequest;",
        "request",
        "Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/http/arch/Resource;",
        "Lteam/opay/business/js/api/UploadPrivacyFileResponse;",
        "d",
        "(Lteam/opay/business/js/api/PrivacyFileRequest;)Landroidx/lifecycle/LiveData;",
        "Lokhttp3/RequestBody;",
        "c",
        "(Lteam/opay/business/js/api/PrivacyFileRequest;)Lokhttp3/RequestBody;",
        "a",
        "Lteam/opay/core/http/arch/AppExecutors;",
        "b",
        "Lqv;",
        "business-js_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lteam/opay/core/http/arch/AppExecutors;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lqv;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/core/http/arch/AppExecutors;Lqv;)V
    .locals 1
    .param p1    # Lteam/opay/core/http/arch/AppExecutors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lqv;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "appExecutors"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "apiService"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/business/js/hilt/UploadFileRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 15
    .line 16
    iput-object p2, p0, Lteam/opay/business/js/hilt/UploadFileRepository;->b:Lqv;

    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic a(Lteam/opay/business/js/hilt/UploadFileRepository;Lteam/opay/business/js/api/PrivacyFileRequest;)Lokhttp3/RequestBody;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/business/js/hilt/UploadFileRepository;->c(Lteam/opay/business/js/api/PrivacyFileRequest;)Lokhttp3/RequestBody;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lteam/opay/business/js/hilt/UploadFileRepository;)Lqv;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/js/hilt/UploadFileRepository;->b:Lqv;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final c(Lteam/opay/business/js/api/PrivacyFileRequest;)Lokhttp3/RequestBody;
    .locals 5

    .line 1
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2, v1}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/io/File;

    .line 9
    .line 10
    invoke-virtual {p1}, Lteam/opay/business/js/api/PrivacyFileRequest;->a()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 18
    .line 19
    sget-object v3, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 20
    .line 21
    const-string v4, "multipart/form-data"

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2, v1, v3}, Lokhttp3/RequestBody$Companion;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p1}, Lteam/opay/business/js/api/PrivacyFileRequest;->c()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    const-string v3, "*/*"

    .line 38
    .line 39
    :cond_0
    const-string v4, "fileFormatType"

    .line 40
    .line 41
    invoke-virtual {v0, v4, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 42
    .line 43
    .line 44
    const-string v3, "file"

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v3, v1, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p1}, Lteam/opay/business/js/api/PrivacyFileRequest;->c()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v3, ""

    .line 59
    .line 60
    if-nez v2, :cond_1

    .line 61
    .line 62
    move-object v2, v3

    .line 63
    :cond_1
    invoke-virtual {v1, v4, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v2, "fileBusinessType"

    .line 68
    .line 69
    invoke-virtual {p1}, Lteam/opay/business/js/api/PrivacyFileRequest;->b()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v1, v2, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {p1}, Lteam/opay/business/js/api/PrivacyFileRequest;->d()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    if-nez v2, :cond_2

    .line 82
    .line 83
    move-object v2, v3

    .line 84
    :cond_2
    const-string v4, "kycScene"

    .line 85
    .line 86
    invoke-virtual {v1, v4, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p1}, Lteam/opay/business/js/api/PrivacyFileRequest;->e()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-nez p1, :cond_3

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    move-object v3, p1

    .line 98
    :goto_0
    const-string p1, "kycUpgradeType"

    .line 99
    .line 100
    invoke-virtual {v1, p1, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    return-object p1
.end method

.method public final d(Lteam/opay/business/js/api/PrivacyFileRequest;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p1    # Lteam/opay/business/js/api/PrivacyFileRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/business/js/api/PrivacyFileRequest;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/http/arch/Resource<",
            "Lteam/opay/business/js/api/UploadPrivacyFileResponse;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lteam/opay/business/js/hilt/UploadFileRepository;->a:Lteam/opay/core/http/arch/AppExecutors;

    .line 7
    .line 8
    new-instance v1, Lteam/opay/business/js/hilt/UploadFileRepository$a;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, v0}, Lteam/opay/business/js/hilt/UploadFileRepository$a;-><init>(Lteam/opay/business/js/hilt/UploadFileRepository;Lteam/opay/business/js/api/PrivacyFileRequest;Lteam/opay/core/http/arch/AppExecutors;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/core/http/arch/NetworkBoundAction;->c()Landroidx/lifecycle/LiveData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
