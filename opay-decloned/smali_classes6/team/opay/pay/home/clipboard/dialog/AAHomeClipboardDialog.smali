.class public final Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;
.super Lteam/opay/pay/home/clipboard/dialog/HomeClipboardAccountDialog;
.source "AAHomeClipboardDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;,
        Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000  2\u00020\u0001:\u0002!\"B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0017\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\u000f\u0010\u000c\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u0003J\u000f\u0010\r\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0003J\u0017\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u001c\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001f\u001a\u00020\u00138BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006#"
    }
    d2 = {
        "Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;",
        "Lteam/opay/pay/home/clipboard/dialog/HomeClipboardAccountDialog;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "R",
        "onCancel",
        "Q",
        "a0",
        "",
        "checkFlag",
        "Z",
        "(Z)V",
        "Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;",
        "l",
        "Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;",
        "_paramsData",
        "Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;",
        "m",
        "Lid8;",
        "Y",
        "()Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;",
        "timeChecker",
        "X",
        "()Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;",
        "paramsData",
        "n",
        "AAClipboardParms",
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
.field public static final n:Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public l:Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final m:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->n:Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/home/clipboard/dialog/HomeClipboardAccountDialog;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lf;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lf;-><init>(Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->m:Lid8;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic V(Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;)Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->c0(Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;)Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic W(Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->b0(Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b0(Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->Z(Z)V

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final c0(Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;)Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v1, "getViewLifecycleOwner(...)"

    .line 8
    .line 9
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, p0, v1}, Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;-><init>(Lag8;Z)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method


# virtual methods
.method public Q()V
    .locals 4

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const-string v1, "source"

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/home/clipboard/dialog/HomeClipboardAccountDialog;->P()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    new-array v2, v2, [Lkotlin/Pair;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object v1, v2, v3

    .line 18
    .line 19
    const-string v1, "home_popup_aa_button_close_click"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public R()V
    .locals 5

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const-string v1, "source"

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/home/clipboard/dialog/HomeClipboardAccountDialog;->P()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    new-array v3, v2, [Lkotlin/Pair;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    aput-object v1, v3, v4

    .line 18
    .line 19
    const-string v1, "home_popup_aa_button_transfer_click"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->X()Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;->getFirstTransferText()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->a0()V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->Z(Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 49
    .line 50
    .line 51
    :goto_1
    return-void
.end method

.method public final X()Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->l:Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final Y()Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->m:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;

    .line 8
    .line 9
    return-object v0
.end method

.method public final Z(Z)V
    .locals 30

    .line 1
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->X()Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v0, Lteam/opay/core/settings/SettingsStorage;

    .line 10
    .line 11
    invoke-static {}, Ljmf;->i()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lteam/opay/core/settings/SettingsStorage;->h()Lteam/opay/core/api/Country;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->X()Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;->getPhone()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lxob;->h(Lteam/opay/core/api/Country;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->X()Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;->getPhotoUrl()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->Y()Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;->c()Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object v22

    .line 50
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->X()Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;->getAutoPay()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->X()Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;->getGateway()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v25

    .line 66
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->X()Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;->getAmount()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v18

    .line 74
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->X()Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;->getFirstTransferText()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v21

    .line 82
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->Y()Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;->b()F

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    new-instance v29, Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;

    .line 91
    .line 92
    move-object/from16 v1, v29

    .line 93
    .line 94
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 95
    .line 96
    .line 97
    move-result-object v17

    .line 98
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 99
    .line 100
    .line 101
    move-result-object v23

    .line 102
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 103
    .line 104
    .line 105
    move-result-object v24

    .line 106
    const v27, 0x1066ff0

    .line 107
    .line 108
    .line 109
    const/16 v28, 0x0

    .line 110
    .line 111
    const-string v4, "send_money"

    .line 112
    .line 113
    const/4 v6, 0x0

    .line 114
    const/4 v7, 0x0

    .line 115
    const/4 v8, 0x0

    .line 116
    const/4 v9, 0x0

    .line 117
    const/4 v10, 0x0

    .line 118
    const/4 v11, 0x0

    .line 119
    const/4 v12, 0x0

    .line 120
    const/4 v13, 0x0

    .line 121
    const/4 v14, 0x1

    .line 122
    const/4 v15, 0x0

    .line 123
    const/16 v16, 0x0

    .line 124
    .line 125
    const/16 v19, 0x0

    .line 126
    .line 127
    const/16 v20, 0x0

    .line 128
    .line 129
    const/16 v26, 0x0

    .line 130
    .line 131
    invoke-direct/range {v1 .. v28}, Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/String;Lteam/opay/core/api/graphql/StampDutyInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 132
    .line 133
    .line 134
    sget-object v6, Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment;->y:Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment$Companion;

    .line 135
    .line 136
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->X()Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;->isOpayLink()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_0

    .line 145
    .line 146
    const-string v0, "AA_Opaycheckout_Copy"

    .line 147
    .line 148
    :goto_0
    move-object v9, v0

    .line 149
    goto :goto_1

    .line 150
    :cond_0
    const-string v0, "AA_Home_Popup"

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :goto_1
    const/16 v11, 0x8

    .line 154
    .line 155
    const/4 v12, 0x0

    .line 156
    const/4 v8, 0x1

    .line 157
    const/4 v10, 0x0

    .line 158
    move-object/from16 v7, v29

    .line 159
    .line 160
    invoke-static/range {v6 .. v12}, Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment$Companion;->b(Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment$Companion;Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;ZLjava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    if-eqz v1, :cond_1

    .line 169
    .line 170
    invoke-static {v1, v0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 171
    .line 172
    .line 173
    :cond_1
    return-void
.end method

.method public final a0()V
    .locals 39

    .line 1
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->Y()Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;->a()V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lteam/opay/pay/home/tabs/OpayFirstTransferDialog;->l:Lteam/opay/pay/home/tabs/OpayFirstTransferDialog$Companion;

    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->X()Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->X()Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;->getPhone()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->X()Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;->getBankName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v29

    .line 34
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->X()Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;->getBankIcon()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v28

    .line 42
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->X()Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;->getPhotoUrl()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v13

    .line 50
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->X()Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;->getFirstTransferText()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v27

    .line 58
    new-instance v1, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 59
    .line 60
    move-object v2, v1

    .line 61
    const/16 v37, 0x1

    .line 62
    .line 63
    const/16 v38, 0x0

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    const/4 v4, 0x0

    .line 67
    const/4 v5, 0x0

    .line 68
    const/4 v8, 0x0

    .line 69
    const/4 v9, 0x0

    .line 70
    const/4 v10, 0x0

    .line 71
    const/4 v11, 0x0

    .line 72
    const/4 v12, 0x0

    .line 73
    const/4 v14, 0x0

    .line 74
    const/4 v15, 0x0

    .line 75
    const/16 v16, 0x0

    .line 76
    .line 77
    const/16 v17, 0x0

    .line 78
    .line 79
    const/16 v18, 0x0

    .line 80
    .line 81
    const/16 v19, 0x0

    .line 82
    .line 83
    const/16 v20, 0x0

    .line 84
    .line 85
    const/16 v21, 0x0

    .line 86
    .line 87
    const/16 v22, 0x0

    .line 88
    .line 89
    const/16 v23, 0x0

    .line 90
    .line 91
    const/16 v24, 0x0

    .line 92
    .line 93
    const/16 v25, 0x0

    .line 94
    .line 95
    const/16 v26, 0x0

    .line 96
    .line 97
    const/16 v30, 0x0

    .line 98
    .line 99
    const/16 v31, 0x0

    .line 100
    .line 101
    const/16 v32, 0x0

    .line 102
    .line 103
    const/16 v33, 0x0

    .line 104
    .line 105
    const/16 v34, 0x0

    .line 106
    .line 107
    const/16 v35, 0x0

    .line 108
    .line 109
    const v36, -0x7000419

    .line 110
    .line 111
    .line 112
    invoke-direct/range {v2 .. v38}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/transfer/contact/bean/TransferOpayContact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lteam/opay/core/api/graphql/StampDutyInfo;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 113
    .line 114
    .line 115
    sget-object v2, Lteam/opay/core/api/GraphQL$ServiceType;->BANK:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 116
    .line 117
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    new-instance v3, Lg;

    .line 122
    .line 123
    move-object/from16 v4, p0

    .line 124
    .line 125
    invoke-direct {v3, v4}, Lg;-><init>(Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;)V

    .line 126
    .line 127
    .line 128
    const-string v5, ""

    .line 129
    .line 130
    invoke-virtual {v0, v1, v5, v2, v3}, Lteam/opay/pay/home/tabs/OpayFirstTransferDialog$Companion;->a(Lteam/opay/pay/transfer/contact/bean/TransferContactData;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lteam/opay/pay/home/tabs/OpayFirstTransferDialog;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    if-eqz v1, :cond_0

    .line 139
    .line 140
    invoke-static {v1, v0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 141
    .line 142
    .line 143
    :cond_0
    return-void
.end method

.method public onCancel()V
    .locals 4

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const-string v1, "source"

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/home/clipboard/dialog/HomeClipboardAccountDialog;->P()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    new-array v2, v2, [Lkotlin/Pair;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object v1, v2, v3

    .line 18
    .line 19
    const-string v1, "home_popup_aa_button_cancel_click"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lteam/opay/pay/home/clipboard/dialog/HomeClipboardAccountDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string p2, "key_data"

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    instance-of p2, p1, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    check-cast p1, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object p1, v0

    .line 28
    :goto_0
    iput-object p1, p0, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->l:Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;

    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lr93;

    .line 35
    .line 36
    iget-object p1, p1, Lr93;->j:Landroid/widget/TextView;

    .line 37
    .line 38
    const-string p2, "tvName"

    .line 39
    .line 40
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lr93;

    .line 51
    .line 52
    iget-object p1, p1, Lr93;->f:Landroid/widget/ImageView;

    .line 53
    .line 54
    const-string p2, "icLogo"

    .line 55
    .line 56
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lr93;

    .line 67
    .line 68
    iget-object p1, p1, Lr93;->j:Landroid/widget/TextView;

    .line 69
    .line 70
    invoke-virtual {p0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->X()Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->X()Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v2}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;->getBankName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, " | "

    .line 95
    .line 96
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Lr93;

    .line 114
    .line 115
    iget-object p1, p1, Lr93;->k:Landroid/widget/TextView;

    .line 116
    .line 117
    invoke-virtual {p0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->X()Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;->getPhone()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {v1}, Lsob;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    check-cast p1, Lr93;

    .line 137
    .line 138
    iget-object p1, p1, Lr93;->f:Landroid/widget/ImageView;

    .line 139
    .line 140
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog;->X()Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-virtual {p2}, Lteam/opay/pay/home/clipboard/dialog/AAHomeClipboardDialog$AAClipboardParms;->getPhotoUrl()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    const/4 v1, 0x2

    .line 152
    invoke-static {p1, p2, v0, v1, v0}, Lme7;->b(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    sget-object p1, Lx7b;->a:Lx7b;

    .line 156
    .line 157
    const-string p2, "source"

    .line 158
    .line 159
    invoke-virtual {p0}, Lteam/opay/pay/home/clipboard/dialog/HomeClipboardAccountDialog;->P()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {p2, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    const/4 v0, 0x1

    .line 168
    new-array v0, v0, [Lkotlin/Pair;

    .line 169
    .line 170
    const/4 v1, 0x0

    .line 171
    aput-object p2, v0, v1

    .line 172
    .line 173
    const-string p2, "home_popup_aa_page_show"

    .line 174
    .line 175
    invoke-virtual {p1, p2, v0}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 176
    .line 177
    .line 178
    return-void
.end method
