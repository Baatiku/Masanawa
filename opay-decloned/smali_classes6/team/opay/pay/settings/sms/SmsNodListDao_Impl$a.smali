.class public Lteam/opay/pay/settings/sms/SmsNodListDao_Impl$a;
.super Landroidx/room/EntityInsertAdapter;
.source "SmsNodListDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Lteam/opay/pay/api/SmsNodeListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;


# direct methods
.method public constructor <init>(Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/settings/sms/SmsNodListDao_Impl$a;->a:Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ld2d;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ld2d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lteam/opay/pay/api/SmsNodeListResponse;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/settings/sms/SmsNodListDao_Impl$a;->e(Ld2d;Lteam/opay/pay/api/SmsNodeListResponse;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "INSERT OR REPLACE INTO `SmsNodeListResponse` (`edited`,`subscribeList`,`uneditedReason`,`priceVerbal`,`userId`) VALUES (?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Ld2d;Lteam/opay/pay/api/SmsNodeListResponse;)V
    .locals 4
    .param p1    # Ld2d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/api/SmsNodeListResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lteam/opay/pay/api/SmsNodeListResponse;->d()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Lteam/opay/pay/api/SmsNodeListResponse;->d()Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    const/4 v1, 0x1

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    int-to-long v2, v0

    .line 33
    invoke-interface {p1, v1, v2, v3}, Ld2d;->c(IJ)V

    .line 34
    .line 35
    .line 36
    :goto_1
    iget-object v0, p0, Lteam/opay/pay/settings/sms/SmsNodListDao_Impl$a;->a:Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;

    .line 37
    .line 38
    invoke-static {v0}, Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;->h(Lteam/opay/pay/settings/sms/SmsNodListDao_Impl;)Lteam/opay/pay/settings/sms/SmsNodeListConverter;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p2}, Lteam/opay/pay/api/SmsNodeListResponse;->f()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lteam/opay/pay/settings/sms/SmsNodeListConverter;->b(Ljava/util/List;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/4 v1, 0x2

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_2
    invoke-virtual {p2}, Lteam/opay/pay/api/SmsNodeListResponse;->g()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const/4 v1, 0x3

    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    invoke-virtual {p2}, Lteam/opay/pay/api/SmsNodeListResponse;->g()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :goto_3
    invoke-virtual {p2}, Lteam/opay/pay/api/SmsNodeListResponse;->e()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const/4 v1, 0x4

    .line 83
    if-nez v0, :cond_4

    .line 84
    .line 85
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_4
    invoke-virtual {p2}, Lteam/opay/pay/api/SmsNodeListResponse;->e()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-interface {p1, v1, v0}, Ld2d;->m(ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :goto_4
    invoke-virtual {p2}, Lteam/opay/pay/api/SmsNodeListResponse;->h()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const/4 v1, 0x5

    .line 101
    if-nez v0, :cond_5

    .line 102
    .line 103
    invoke-interface {p1, v1}, Ld2d;->l(I)V

    .line 104
    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_5
    invoke-virtual {p2}, Lteam/opay/pay/api/SmsNodeListResponse;->h()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-interface {p1, v1, p2}, Ld2d;->m(ILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :goto_5
    return-void
.end method
