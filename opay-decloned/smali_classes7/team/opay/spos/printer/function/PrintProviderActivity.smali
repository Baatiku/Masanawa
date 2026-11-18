.class public final Lteam/opay/spos/printer/function/PrintProviderActivity;
.super Lteam/opay/spos/printer/function/Hilt_PrintProviderActivity;
.source "PrintProviderActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/spos/printer/function/PrintProviderActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0003J\u0019\u0010\u0010\u001a\u00020\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0019\u0010\u0012\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0008J\u000f\u0010\u0013\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0003J\u0017\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0008J\u0017\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0008R$\u0010\u001d\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lteam/opay/spos/printer/function/PrintProviderActivity;",
        "Lteam/opay/core/common/base/HiltActivity;",
        "<init>",
        "()V",
        "Landroid/content/Intent;",
        "intent",
        "",
        "e0",
        "(Landroid/content/Intent;)V",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "g0",
        "(Landroidx/fragment/app/Fragment;)V",
        "f0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onNewIntent",
        "onDestroy",
        "h0",
        "i0",
        "Lteam/opay/spos/printer/api/PosPrintExtendInfo;",
        "o",
        "Lteam/opay/spos/printer/api/PosPrintExtendInfo;",
        "getExtendInfo",
        "()Lteam/opay/spos/printer/api/PosPrintExtendInfo;",
        "setExtendInfo",
        "(Lteam/opay/spos/printer/api/PosPrintExtendInfo;)V",
        "extendInfo",
        "p",
        "Companion",
        "spos-printer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final p:Lteam/opay/spos/printer/function/PrintProviderActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public o:Lteam/opay/spos/printer/api/PosPrintExtendInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/spos/printer/function/PrintProviderActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/spos/printer/function/PrintProviderActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/spos/printer/function/PrintProviderActivity;->p:Lteam/opay/spos/printer/function/PrintProviderActivity$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/spos/printer/R$layout;->printer_activity_container:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/spos/printer/function/Hilt_PrintProviderActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic d0(Lteam/opay/spos/printer/function/PrintProviderActivity;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/spos/printer/function/PrintProviderActivity;->i0(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final e0(Landroid/content/Intent;)V
    .locals 5

    .line 1
    const-string v0, "printOtherInfo"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 11
    .line 12
    new-instance v2, Lcom/google/gson/Gson;

    .line 13
    .line 14
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 15
    .line 16
    .line 17
    const-class v3, Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 18
    .line 19
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catchall_0
    move-exception v2

    .line 30
    goto :goto_0

    .line 31
    :catchall_1
    move-exception v2

    .line 32
    move-object v0, v1

    .line 33
    :goto_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 34
    .line 35
    invoke-static {v2}, Lkotlin/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :goto_1
    sget-object v2, Lcl8;->c:Lcl8;

    .line 43
    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v4, "print extend info : "

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    const/4 v4, 0x2

    .line 62
    invoke-static {v2, v3, v1, v4, v1}, Lteam/opay/core/common/GenericLogger;->g(Lteam/opay/core/common/GenericLogger;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    move-object v1, v0

    .line 66
    check-cast v1, Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 67
    .line 68
    :cond_0
    iput-object v1, p0, Lteam/opay/spos/printer/function/PrintProviderActivity;->o:Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    invoke-virtual {v1}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->isVerifyPin()Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    goto :goto_2

    .line 83
    :cond_1
    const/4 v0, 0x0

    .line 84
    :goto_2
    if-eqz v0, :cond_2

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lteam/opay/spos/printer/function/PrintProviderActivity;->h0(Landroid/content/Intent;)V

    .line 87
    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_2
    invoke-virtual {p0, p1}, Lteam/opay/spos/printer/function/PrintProviderActivity;->i0(Landroid/content/Intent;)V

    .line 91
    .line 92
    .line 93
    :goto_3
    return-void
.end method

.method private final f0()V
    .locals 1

    .line 1
    sget v0, Lteam/opay/spos/printer/R$string;->common_not_supported:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0, v0}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final g0(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    sget v0, Lteam/opay/spos/printer/R$id;->fragment_container:I

    .line 2
    .line 3
    invoke-static {p0, v0, p1}, Lre6;->k(Landroidx/fragment/app/FragmentActivity;ILandroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final h0(Landroid/content/Intent;)V
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/spos/printer/function/PrinterVerifyPinDialogFragment;->s:Lteam/opay/spos/printer/function/PrinterVerifyPinDialogFragment$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/spos/printer/function/PrinterVerifyPinDialogFragment$Companion;->a()Lteam/opay/spos/printer/function/PrinterVerifyPinDialogFragment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lteam/opay/spos/printer/function/PrintProviderActivity$showPrintVerifyPinDialog$1$1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lteam/opay/spos/printer/function/PrintProviderActivity$showPrintVerifyPinDialog$1$1;-><init>(Lteam/opay/spos/printer/function/PrintProviderActivity;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lteam/opay/spos/printer/function/PrinterVerifyPinDialogFragment;->a0(Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lteam/opay/spos/printer/function/PrintProviderActivity$showPrintVerifyPinDialog$1$2;

    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lteam/opay/spos/printer/function/PrintProviderActivity$showPrintVerifyPinDialog$1$2;-><init>(Lteam/opay/spos/printer/function/PrintProviderActivity;Landroid/content/Intent;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lteam/opay/spos/printer/function/PrinterVerifyPinDialogFragment;->b0(Lkotlin/jvm/functions/Function0;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v0}, Lre6;->n(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/common/base/BaseDialogFragment;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final i0(Landroid/content/Intent;)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    invoke-static {v3}, Lvd;->c(Landroid/net/Uri;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-eqz v3, :cond_4

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const-string v5, "printOtherInfo"

    .line 23
    .line 24
    const-string v6, "DATA"

    .line 25
    .line 26
    sparse-switch v4, :sswitch_data_0

    .line 27
    .line 28
    .line 29
    goto/16 :goto_1

    .line 30
    .line 31
    :sswitch_0
    const-string v0, "opaypos://open/qrCode/printer"

    .line 32
    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    goto/16 :goto_1

    .line 40
    .line 41
    :cond_1
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    sget-object v0, Lteam/opay/spos/printer/internal/IPrinterModuleFragment;->Companion:Lteam/opay/spos/printer/internal/IPrinterModuleFragment$Companion;

    .line 46
    .line 47
    sget-object v3, Lteam/opay/spos/printer/internal/PrinterFragmentTag;->QRCODE:Lteam/opay/spos/printer/internal/PrinterFragmentTag;

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Lteam/opay/spos/printer/internal/IPrinterModuleFragment$Companion;->a(Lteam/opay/spos/printer/internal/PrinterFragmentTag;)Lteam/opay/spos/printer/internal/IPrinterModuleFragment;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v6, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    new-array v2, v2, [Lkotlin/Pair;

    .line 58
    .line 59
    aput-object p1, v2, v1

    .line 60
    .line 61
    invoke-static {v2}, Lgl1;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, v0}, Lteam/opay/spos/printer/function/PrintProviderActivity;->g0(Landroidx/fragment/app/Fragment;)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_2

    .line 72
    .line 73
    :sswitch_1
    const-string v4, "opaypos://open/printer"

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_4

    .line 80
    .line 81
    sget-object v3, Lteam/opay/spos/printer/internal/IPrinterModuleFragment;->Companion:Lteam/opay/spos/printer/internal/IPrinterModuleFragment$Companion;

    .line 82
    .line 83
    sget-object v4, Lteam/opay/spos/printer/internal/PrinterFragmentTag;->DEFAULT:Lteam/opay/spos/printer/internal/PrinterFragmentTag;

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Lteam/opay/spos/printer/internal/IPrinterModuleFragment$Companion;->a(Lteam/opay/spos/printer/internal/PrinterFragmentTag;)Lteam/opay/spos/printer/internal/IPrinterModuleFragment;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-static {v6, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    const-string v6, "imgUrl"

    .line 98
    .line 99
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-static {v6, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    const-string v7, "fileName"

    .line 108
    .line 109
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {v7, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget-object v7, p0, Lteam/opay/spos/printer/function/PrintProviderActivity;->o:Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 118
    .line 119
    invoke-static {v5, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    const/4 v7, 0x4

    .line 124
    new-array v7, v7, [Lkotlin/Pair;

    .line 125
    .line 126
    aput-object v4, v7, v1

    .line 127
    .line 128
    aput-object v6, v7, v2

    .line 129
    .line 130
    aput-object p1, v7, v0

    .line 131
    .line 132
    const/4 p1, 0x3

    .line 133
    aput-object v5, v7, p1

    .line 134
    .line 135
    invoke-static {v7}, Lgl1;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 140
    .line 141
    .line 142
    invoke-direct {p0, v3}, Lteam/opay/spos/printer/function/PrintProviderActivity;->g0(Landroidx/fragment/app/Fragment;)V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :sswitch_2
    const-string v4, "opaypos://open/printer/v2"

    .line 147
    .line 148
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-nez v3, :cond_2

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_2
    sget-object v3, Lteam/opay/spos/printer/internal/IPrinterModuleFragment;->Companion:Lteam/opay/spos/printer/internal/IPrinterModuleFragment$Companion;

    .line 156
    .line 157
    sget-object v4, Lteam/opay/spos/printer/internal/PrinterFragmentTag;->DEFAULT_V2:Lteam/opay/spos/printer/internal/PrinterFragmentTag;

    .line 158
    .line 159
    invoke-virtual {v3, v4}, Lteam/opay/spos/printer/internal/IPrinterModuleFragment$Companion;->a(Lteam/opay/spos/printer/internal/PrinterFragmentTag;)Lteam/opay/spos/printer/internal/IPrinterModuleFragment;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {v6, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    iget-object v4, p0, Lteam/opay/spos/printer/function/PrintProviderActivity;->o:Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    .line 172
    .line 173
    invoke-static {v5, v4}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    new-array v0, v0, [Lkotlin/Pair;

    .line 178
    .line 179
    aput-object p1, v0, v1

    .line 180
    .line 181
    aput-object v4, v0, v2

    .line 182
    .line 183
    invoke-static {v0}, Lgl1;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 188
    .line 189
    .line 190
    invoke-direct {p0, v3}, Lteam/opay/spos/printer/function/PrintProviderActivity;->g0(Landroidx/fragment/app/Fragment;)V

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :sswitch_3
    const-string p1, "opaypos://open/bitmap/printer"

    .line 195
    .line 196
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-nez p1, :cond_3

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_3
    sget-object p1, Lteam/opay/spos/printer/internal/IPrinterModuleFragment;->Companion:Lteam/opay/spos/printer/internal/IPrinterModuleFragment$Companion;

    .line 204
    .line 205
    sget-object v0, Lteam/opay/spos/printer/internal/PrinterFragmentTag;->BITMAP:Lteam/opay/spos/printer/internal/PrinterFragmentTag;

    .line 206
    .line 207
    invoke-virtual {p1, v0}, Lteam/opay/spos/printer/internal/IPrinterModuleFragment$Companion;->a(Lteam/opay/spos/printer/internal/PrinterFragmentTag;)Lteam/opay/spos/printer/internal/IPrinterModuleFragment;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-direct {p0, p1}, Lteam/opay/spos/printer/function/PrintProviderActivity;->g0(Landroidx/fragment/app/Fragment;)V

    .line 212
    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_4
    :goto_1
    invoke-direct {p0}, Lteam/opay/spos/printer/function/PrintProviderActivity;->f0()V

    .line 216
    .line 217
    .line 218
    :goto_2
    return-void

    .line 219
    :sswitch_data_0
    .sparse-switch
        -0x5ebfc8a0 -> :sswitch_3
        -0x16f15449 -> :sswitch_2
        0x4c4a26b4 -> :sswitch_1
        0x6e8e8edf -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/core/common/base/HiltActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "intent"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lteam/opay/spos/printer/function/PrintProviderActivity;->e0(Landroid/content/Intent;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lteam/opay/spos/printer/function/PrintProviderActivity;->e0(Landroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
