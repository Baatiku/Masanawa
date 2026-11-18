.class public final Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;
.super Lteam/opay/pay/android/BaseActivity;
.source "NTPTimeNoticeActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/team/home/ntp/NTPTimeNoticeActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 )2\u00020\u0001:\u0001*B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0017\u00a2\u0006\u0004\u0008\t\u0010\u0003R\"\u0010\u0011\u001a\u00020\n8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0017\u001a\u00020\u00128VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00188\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\"\u0010#\u001a\u00020\u00188\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010\u001a\u001a\u0004\u0008!\u0010\u001c\"\u0004\u0008\"\u0010\u001eR\u001b\u0010(\u001a\u00020$8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010\u0014\u001a\u0004\u0008&\u0010\'\u00a8\u0006+"
    }
    d2 = {
        "Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onBackPressed",
        "",
        "a",
        "Z",
        "getSkipAppLock",
        "()Z",
        "setSkipAppLock",
        "(Z)V",
        "skipAppLock",
        "Lqg6;",
        "b",
        "Lid8;",
        "F",
        "()Lqg6;",
        "viewBinding",
        "",
        "c",
        "I",
        "getDarkStatusBarColor",
        "()I",
        "setDarkStatusBarColor",
        "(I)V",
        "darkStatusBarColor",
        "d",
        "getLightStatusBarColor",
        "setLightStatusBarColor",
        "lightStatusBarColor",
        "Lteam/opay/core/settings/NoClearStorage;",
        "e",
        "E",
        "()Lteam/opay/core/settings/NoClearStorage;",
        "noClearStorage",
        "f",
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
.field public static final f:Lcom/opay/team/home/ntp/NTPTimeNoticeActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Z

.field public final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:I

.field public d:I

.field public final e:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/opay/team/home/ntp/NTPTimeNoticeActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/opay/team/home/ntp/NTPTimeNoticeActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;->f:Lcom/opay/team/home/ntp/NTPTimeNoticeActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->fragment_ntp_time_notice:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/android/BaseActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;->a:Z

    .line 8
    .line 9
    new-instance v0, Lni9;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lni9;-><init>(Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;->b:Lid8;

    .line 19
    .line 20
    sget v0, Lteam/opay/pay/R$color;->no_dark_1b1b1b:I

    .line 21
    .line 22
    iput v0, p0, Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;->c:I

    .line 23
    .line 24
    sget v0, Lteam/opay/pay/R$color;->no_dark_f8f8fb:I

    .line 25
    .line 26
    iput v0, p0, Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;->d:I

    .line 27
    .line 28
    new-instance v0, Loi9;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Loi9;-><init>(Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;->e:Lid8;

    .line 38
    .line 39
    return-void
.end method

.method public static synthetic A(Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;->H(Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;->I(Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;)Lteam/opay/core/settings/NoClearStorage;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;->G(Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;)Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;)Lqg6;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;->J(Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;)Lqg6;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final E()Lteam/opay/core/settings/NoClearStorage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;->e:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/core/settings/NoClearStorage;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final G(Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;)Lteam/opay/core/settings/NoClearStorage;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/core/settings/NoClearStorage;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final H(Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "ntp_sync_notice_later_button_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method public static final I(Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lkotlin/Pair;

    .line 5
    .line 6
    const-string v2, "ntp_sync_notice_date_button_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/content/Intent;

    .line 12
    .line 13
    const-string v1, "android.settings.DATE_SETTINGS"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method public static final J(Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;)Lqg6;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lqg6;->inflate(Landroid/view/LayoutInflater;)Lqg6;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public F()Lqg6;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lqg6;

    .line 8
    .line 9
    return-object v0
.end method

.method public getDarkStatusBarColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public getLightStatusBarColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public getSkipAppLock()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;->F()Lqg6;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onBackPressed()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 1
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/pay/android/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "diff_hours"

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const-wide/16 v1, 0x0

    .line 13
    .line 14
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    invoke-virtual {p0}, Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;->F()Lqg6;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v1, v1, Lqg6;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 29
    .line 30
    const-string v2, "actionBar"

    .line 31
    .line 32
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Lpi9;

    .line 36
    .line 37
    invoke-direct {v2, p0}, Lpi9;-><init>(Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;->F()Lqg6;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v1, v1, Lqg6;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 48
    .line 49
    sget v2, Lteam/opay/pay/R$string;->ntp_tips_content:I

    .line 50
    .line 51
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v2}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    sget-object v1, Lx7b;->a:Lx7b;

    .line 63
    .line 64
    invoke-static {v0, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const/4 v0, 0x1

    .line 69
    new-array v0, v0, [Lkotlin/Pair;

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    aput-object p1, v0, v2

    .line 73
    .line 74
    const-string p1, "ntp_sync_notice_page_show"

    .line 75
    .line 76
    invoke-virtual {v1, p1, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;->E()Lteam/opay/core/settings/NoClearStorage;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 84
    .line 85
    .line 86
    move-result-wide v0

    .line 87
    invoke-virtual {p1, v0, v1}, Lteam/opay/core/settings/NoClearStorage;->P1(J)V

    .line 88
    .line 89
    .line 90
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 91
    .line 92
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 93
    .line 94
    const-string v1, "MM/dd/yyyy, h:mm a"

    .line 95
    .line 96
    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;->F()Lqg6;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    iget-object v1, v1, Lqg6;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 104
    .line 105
    new-instance v2, Ljava/util/Date;

    .line 106
    .line 107
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;->F()Lqg6;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    iget-object p1, p1, Lqg6;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 122
    .line 123
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v1, v0}, Ljava/util/TimeZone;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;->F()Lqg6;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iget-object p1, p1, Lqg6;->c:Landroidx/appcompat/widget/AppCompatButton;

    .line 139
    .line 140
    const-string v0, "dialogConfirm"

    .line 141
    .line 142
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    new-instance v0, Lqi9;

    .line 146
    .line 147
    invoke-direct {v0, p0}, Lqi9;-><init>(Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;)V

    .line 148
    .line 149
    .line 150
    invoke-static {p1, v0}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public setDarkStatusBarColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public setLightStatusBarColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public setSkipAppLock(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/team/home/ntp/NTPTimeNoticeActivity;->a:Z

    .line 2
    .line 3
    return-void
.end method
