.class public final Lcom/opay/team/home/CommonBusiness;
.super Lteam/opay/pay/home/pay/Business;
.source "CommonBusiness.kt"


# annotations
.annotation runtime Lcom/google/auto/service/AutoService;
    value = {
        Lteam/opay/pay/home/pay/Business;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/home/CommonBusiness$Companion;,
        Lcom/opay/team/home/CommonBusiness$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J \u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/opay/team/home/CommonBusiness;",
        "Lteam/opay/pay/home/pay/Business;",
        "<init>",
        "()V",
        "supportGuest",
        "",
        "context",
        "Landroid/content/Context;",
        "data",
        "Lorg/json/JSONObject;",
        "service",
        "Lteam/opay/pay/home/Service;",
        "open",
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
.field public static final Companion:Lcom/opay/team/home/CommonBusiness$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/opay/team/home/CommonBusiness$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/team/home/CommonBusiness$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/opay/team/home/CommonBusiness;->Companion:Lcom/opay/team/home/CommonBusiness$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/home/pay/Business;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public open(Landroid/content/Context;Lorg/json/JSONObject;Lteam/opay/pay/home/Service;)Z
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/home/Service;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "data"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "service"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "action_url"

    .line 17
    .line 18
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    sget-object p2, Lcom/opay/team/home/CommonBusiness$a;->a:[I

    .line 23
    .line 24
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    aget p2, p2, p3

    .line 29
    .line 30
    const/4 p3, 0x0

    .line 31
    const/4 v0, 0x1

    .line 32
    packed-switch p2, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    return p3

    .line 36
    :pswitch_0
    sget-object p1, Ld00;->a:Ld00;

    .line 37
    .line 38
    invoke-virtual {p1}, Ld00;->e()Landroid/app/Activity;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    return p3

    .line 45
    :cond_0
    invoke-static {p1}, Lum8;->e(Landroid/app/Activity;)Z

    .line 46
    .line 47
    .line 48
    return v0

    .line 49
    :pswitch_1
    sget-object v1, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 50
    .line 51
    sget-object v4, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 52
    .line 53
    const-string v5, "account_list"

    .line 54
    .line 55
    new-array v6, p3, [Lkotlin/Pair;

    .line 56
    .line 57
    move-object v2, p1

    .line 58
    invoke-virtual/range {v1 .. v6}, Lcom/opay/team/home/a;->w(Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;[Lkotlin/Pair;)Lcom/opay/team/home/ServiceTypeRunner;

    .line 59
    .line 60
    .line 61
    return v0

    .line 62
    :pswitch_2
    sget-object p2, Lcom/opay/team/home/CommonBusiness;->Companion:Lcom/opay/team/home/CommonBusiness$Companion;

    .line 63
    .line 64
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p1, v3}, Lcom/opay/team/home/CommonBusiness$Companion;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return v0

    .line 71
    :pswitch_3
    sget-object p2, Lteam/opay/pay/home/bean/TabData;->f:Lteam/opay/pay/home/bean/TabData$Companion;

    .line 72
    .line 73
    const-string v1, "Pay"

    .line 74
    .line 75
    invoke-virtual {p2, p1, v1}, Lteam/opay/pay/home/bean/TabData$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Lteam/opay/pay/home/bean/TabData;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    if-eqz p2, :cond_1

    .line 80
    .line 81
    invoke-virtual {p2}, Lteam/opay/pay/home/bean/TabData;->a()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    if-eqz v3, :cond_1

    .line 86
    .line 87
    sget-object v1, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 88
    .line 89
    new-array v6, p3, [Lkotlin/Pair;

    .line 90
    .line 91
    const/4 v7, 0x4

    .line 92
    const/4 v8, 0x0

    .line 93
    const/4 v4, 0x0

    .line 94
    const-string v5, "TAB_OEC"

    .line 95
    .line 96
    move-object v2, p1

    .line 97
    invoke-static/range {v1 .. v8}, Lcom/opay/team/home/a;->y(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;[Lkotlin/Pair;ILjava/lang/Object;)Lcom/opay/team/home/ServiceTypeRunner;

    .line 98
    .line 99
    .line 100
    :cond_1
    return v0

    .line 101
    :pswitch_4
    sget-object p2, Lteam/opay/pay/home/bean/TabData;->f:Lteam/opay/pay/home/bean/TabData$Companion;

    .line 102
    .line 103
    const-string v1, "Finance"

    .line 104
    .line 105
    invoke-virtual {p2, p1, v1}, Lteam/opay/pay/home/bean/TabData$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Lteam/opay/pay/home/bean/TabData;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    if-eqz p2, :cond_2

    .line 110
    .line 111
    invoke-virtual {p2}, Lteam/opay/pay/home/bean/TabData;->a()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    if-eqz v3, :cond_2

    .line 116
    .line 117
    sget-object v1, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 118
    .line 119
    new-array v6, p3, [Lkotlin/Pair;

    .line 120
    .line 121
    const/4 v7, 0x4

    .line 122
    const/4 v8, 0x0

    .line 123
    const/4 v4, 0x0

    .line 124
    const-string v5, "TAB_TAB2"

    .line 125
    .line 126
    move-object v2, p1

    .line 127
    invoke-static/range {v1 .. v8}, Lcom/opay/team/home/a;->y(Lcom/opay/team/home/a;Landroid/content/Context;Ljava/lang/String;Lteam/opay/core/api/Country;Ljava/lang/String;[Lkotlin/Pair;ILjava/lang/Object;)Lcom/opay/team/home/ServiceTypeRunner;

    .line 128
    .line 129
    .line 130
    :cond_2
    return v0

    .line 131
    :pswitch_5
    sget-object p2, Lcom/opay/team/home/a;->a:Lcom/opay/team/home/a;

    .line 132
    .line 133
    invoke-virtual {p2, p1}, Lcom/opay/team/home/a;->A(Landroid/content/Context;)V

    .line 134
    .line 135
    .line 136
    return v0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public supportGuest(Landroid/content/Context;Lorg/json/JSONObject;Lteam/opay/pay/home/Service;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lteam/opay/pay/home/Service;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "data"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "service"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lteam/opay/pay/home/Service;->APPLICATION_MARKET:Lteam/opay/pay/home/Service;

    .line 17
    .line 18
    if-ne p3, v0, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lteam/opay/pay/home/pay/Business;->supportGuest(Landroid/content/Context;Lorg/json/JSONObject;Lteam/opay/pay/home/Service;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1
.end method
