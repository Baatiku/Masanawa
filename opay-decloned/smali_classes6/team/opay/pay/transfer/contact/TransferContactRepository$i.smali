.class public final Lteam/opay/pay/transfer/contact/TransferContactRepository$i;
.super Lteam/opay/core/android/arch/SingleNetworkBoundResource;
.source "TransferContactRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/transfer/contact/TransferContactRepository;->v(Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;Z)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/android/arch/SingleNetworkBoundResource<",
        "Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001b\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u000e0\u000bH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "team/opay/pay/transfer/contact/TransferContactRepository$i",
        "Lteam/opay/core/android/arch/SingleNetworkBoundResource;",
        "Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;",
        "item",
        "",
        "E",
        "(Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;)V",
        "data",
        "",
        "F",
        "(Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;)Z",
        "Landroidx/lifecycle/LiveData;",
        "t",
        "()Landroidx/lifecycle/LiveData;",
        "Lteam/opay/core/android/arch/ApiResponse;",
        "m",
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


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:Lteam/opay/pay/transfer/contact/TransferContactRepository;

.field public final synthetic g:Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;


# direct methods
.method public constructor <init>(ZLteam/opay/pay/transfer/contact/TransferContactRepository;Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;Lteam/opay/core/android/arch/AppExecutors;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository$i;->e:Z

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository$i;->f:Lteam/opay/pay/transfer/contact/TransferContactRepository;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository$i;->g:Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;

    .line 6
    .line 7
    invoke-direct {p0, p4}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;-><init>(Lteam/opay/core/android/arch/AppExecutors;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic A(Landroidx/lifecycle/MutableLiveData;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/TransferContactRepository$i;->D(Landroidx/lifecycle/MutableLiveData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/transfer/contact/TransferContactRepository$i;->C(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final C(Lteam/opay/pay/api/HttpResponse;)Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/api/HttpResponse;->b()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final D(Landroidx/lifecycle/MutableLiveData;)V
    .locals 14

    .line 1
    new-instance v0, Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 4
    .line 5
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lteam/opay/core/settings/NoClearStorage;->j()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lkea;->a:Lkea;

    .line 21
    .line 22
    invoke-virtual {v1}, Lkea;->c()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    new-instance v0, Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;

    .line 41
    .line 42
    const/16 v12, 0x7f

    .line 43
    .line 44
    const/4 v13, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v9, 0x0

    .line 50
    const/4 v10, 0x0

    .line 51
    const/4 v11, 0x0

    .line 52
    move-object v4, v0

    .line 53
    invoke-direct/range {v4 .. v13}, Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const-class v1, Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;

    .line 58
    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-lez v2, :cond_3

    .line 72
    .line 73
    new-instance v2, Lcom/google/gson/Gson;

    .line 74
    .line 75
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    if-eqz v3, :cond_5

    .line 86
    .line 87
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_4

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_5

    .line 99
    .line 100
    new-instance v0, Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;

    .line 101
    .line 102
    const/16 v10, 0x7e

    .line 103
    .line 104
    const/4 v11, 0x0

    .line 105
    const/4 v4, 0x0

    .line 106
    const/4 v5, 0x0

    .line 107
    const/4 v6, 0x0

    .line 108
    const/4 v7, 0x0

    .line 109
    const/4 v8, 0x0

    .line 110
    const/4 v9, 0x0

    .line 111
    move-object v2, v0

    .line 112
    invoke-direct/range {v2 .. v11}, Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_5
    :goto_0
    new-instance v2, Lcom/google/gson/Gson;

    .line 117
    .line 118
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;

    .line 126
    .line 127
    invoke-virtual {v0, v3}, Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;->j(Ljava/util/List;)V

    .line 128
    .line 129
    .line 130
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method


# virtual methods
.method public E(Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;)V
    .locals 12

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository$i;->e:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;->f()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    sget-object v1, Lkea;->a:Lkea;

    .line 18
    .line 19
    invoke-virtual {v1}, Lkea;->c()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1}, Lkea;->c()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {v1}, Lkea;->c()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    .line 42
    .line 43
    :cond_2
    new-instance v0, Lteam/opay/core/settings/NoClearStorage;

    .line 44
    .line 45
    sget-object v1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 46
    .line 47
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-direct {v0, v1}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lcom/google/gson/Gson;

    .line 59
    .line 60
    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 61
    .line 62
    .line 63
    const/16 v10, 0x7f

    .line 64
    .line 65
    const/4 v11, 0x0

    .line 66
    const/4 v3, 0x0

    .line 67
    const/4 v4, 0x0

    .line 68
    const/4 v5, 0x0

    .line 69
    const/4 v6, 0x0

    .line 70
    const/4 v7, 0x0

    .line 71
    const/4 v8, 0x0

    .line 72
    const/4 v9, 0x0

    .line 73
    move-object v2, p1

    .line 74
    invoke-static/range {v2 .. v11}, Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;->b(Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const/4 v2, 0x0

    .line 79
    invoke-virtual {p1, v2}, Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;->j(Ljava/util/List;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;->c()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    if-eqz v2, :cond_3

    .line 87
    .line 88
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-nez v2, :cond_4

    .line 93
    .line 94
    :cond_3
    const-string v2, "otravel://transfer/aahome/entrance"

    .line 95
    .line 96
    invoke-virtual {p1, v2}, Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;->i(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_4
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 100
    .line 101
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {v0, p1}, Lteam/opay/core/settings/NoClearStorage;->S0(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sget-object p1, Lkea;->a:Lkea;

    .line 109
    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 111
    .line 112
    .line 113
    move-result-wide v0

    .line 114
    invoke-virtual {p1, v0, v1}, Lkea;->e(J)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public F(Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;)Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-object p1, Lkea;->a:Lkea;

    .line 6
    .line 7
    invoke-virtual {p1}, Lkea;->d()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    sub-long/2addr v0, v2

    .line 12
    sget-object p1, Lteam/opay/pay/util/OpayIntValueConfig;->Companion:Lteam/opay/pay/util/OpayIntValueConfig$Companion;

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/pay/util/OpayIntValueConfig$Companion;->a()Lteam/opay/pay/util/OpayIntValueConfig;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lteam/opay/pay/util/OpayIntValueConfig;->getValue()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const p1, 0x15180

    .line 26
    .line 27
    .line 28
    :goto_0
    mul-int/lit16 p1, p1, 0x3e8

    .line 29
    .line 30
    int-to-long v2, p1

    .line 31
    cmp-long p1, v0, v2

    .line 32
    .line 33
    if-lez p1, :cond_1

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    :goto_1
    return p1
.end method

.method public m()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/core/android/arch/ApiResponse<",
            "Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository$i;->f:Lteam/opay/pay/transfer/contact/TransferContactRepository;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/pay/transfer/contact/TransferContactRepository;->i(Lteam/opay/pay/transfer/contact/TransferContactRepository;)Lfv;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lteam/opay/pay/transfer/contact/TransferContactRepository$i;->g:Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;

    .line 8
    .line 9
    sget-object v2, Lteam/opay/pay/transfer/ContactsQueryConfig;->Companion:Lteam/opay/pay/transfer/ContactsQueryConfig$Companion;

    .line 10
    .line 11
    invoke-virtual {v2}, Lteam/opay/pay/transfer/ContactsQueryConfig$Companion;->c()Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-lez v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;->a()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    add-int/lit8 v4, v4, -0x1

    .line 35
    .line 36
    if-ge v2, v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;->a()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-interface {v4, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;->b(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-interface {v0, v1}, Lfv;->i1(Lteam/opay/pay/transfer/contact/bean/QueryUserListBody;)Lretrofit2/Call;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Lv4f;

    .line 54
    .line 55
    invoke-direct {v1}, Lv4f;-><init>()V

    .line 56
    .line 57
    .line 58
    const/4 v2, 0x2

    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-static {v0, v3, v1, v2, v3}, Lyv;->c(Lretrofit2/Call;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lteam/opay/core/android/arch/LiveDataCall;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0
.end method

.method public t()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/core/android/arch/SingleNetworkBoundResource;->r()Lteam/opay/core/android/arch/AppExecutors;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lteam/opay/core/android/arch/AppExecutors;->a()Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lu4f;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Lu4f;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public bridge synthetic x(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/transfer/contact/TransferContactRepository$i;->E(Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic z(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lteam/opay/pay/transfer/contact/TransferContactRepository$i;->F(Lteam/opay/pay/transfer/contact/bean/UserListTransferContactData;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
