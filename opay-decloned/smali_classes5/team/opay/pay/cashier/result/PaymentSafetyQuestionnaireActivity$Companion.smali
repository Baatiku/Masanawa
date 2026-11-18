.class public final Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaireActivity$Companion;
.super Ljava/lang/Object;
.source "PaymentSafetyQuestionnaireActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaireActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001d\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaireActivity$Companion;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaire;",
        "data",
        "",
        "a",
        "(Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaire;)Z",
        "Landroid/content/Context;",
        "context",
        "",
        "b",
        "(Landroid/content/Context;Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaire;)V",
        "",
        "KEY_DATA",
        "Ljava/lang/String;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaireActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaire;)Z
    .locals 14
    .param p1    # Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaire;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lteam/opay/core/settings/NoClearStorage;

    .line 7
    .line 8
    invoke-static {}, Ljmf;->i()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-virtual {v0}, Lteam/opay/core/settings/NoClearStorage;->z0()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    invoke-virtual {v0}, Lteam/opay/core/settings/NoClearStorage;->A0()J

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    invoke-virtual {v0}, Lteam/opay/core/settings/NoClearStorage;->x0()I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    invoke-virtual {v0}, Lteam/opay/core/settings/NoClearStorage;->y0()I

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    sub-long v3, v1, v3

    .line 36
    .line 37
    const v9, 0x240c8400

    .line 38
    .line 39
    .line 40
    int-to-long v9, v9

    .line 41
    const/4 v11, 0x1

    .line 42
    const/4 v12, 0x0

    .line 43
    cmp-long v13, v3, v9

    .line 44
    .line 45
    if-lez v13, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Lteam/opay/core/settings/NoClearStorage;->i2(J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Lteam/opay/core/settings/NoClearStorage;->j2(J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v12}, Lteam/opay/core/settings/NoClearStorage;->g2(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v12}, Lteam/opay/core/settings/NoClearStorage;->h2(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_0
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaire;->getWeekFrequency()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-eqz v3, :cond_1

    .line 65
    .line 66
    invoke-static {v3}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-eqz v3, :cond_1

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const/4 v3, 0x5

    .line 78
    :goto_0
    if-lt v7, v3, :cond_3

    .line 79
    .line 80
    :cond_2
    const/4 v11, 0x0

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    sub-long v3, v1, v5

    .line 83
    .line 84
    const v5, 0x5265c00

    .line 85
    .line 86
    .line 87
    int-to-long v5, v5

    .line 88
    cmp-long v7, v3, v5

    .line 89
    .line 90
    if-lez v7, :cond_4

    .line 91
    .line 92
    invoke-virtual {v0, v1, v2}, Lteam/opay/core/settings/NoClearStorage;->j2(J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v12}, Lteam/opay/core/settings/NoClearStorage;->h2(I)V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaire;->getDayFrequency()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-eqz p1, :cond_5

    .line 104
    .line 105
    invoke-static {p1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-eqz p1, :cond_5

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    goto :goto_1

    .line 116
    :cond_5
    const/4 p1, 0x0

    .line 117
    :goto_1
    if-ge v8, p1, :cond_2

    .line 118
    .line 119
    :goto_2
    return v11
.end method

.method public final b(Landroid/content/Context;Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaire;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaire;
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
    new-instance v0, Landroid/content/Intent;

    .line 12
    .line 13
    const-class v1, Lteam/opay/pay/cashier/result/PaymentSafetyQuestionnaireActivity;

    .line 14
    .line 15
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "key_data"

    .line 19
    .line 20
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
