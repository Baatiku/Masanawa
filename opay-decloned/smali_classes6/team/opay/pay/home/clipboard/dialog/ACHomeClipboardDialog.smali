.class public final Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;
.super Lteam/opay/pay/home/clipboard/dialog/HomeClipboardAccountDialog;
.source "ACHomeClipboardDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog$ACClipboardParms;,
        Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 &2\u00020\u0001:\u0002\'(B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J!\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u0003J\u000f\u0010\r\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0003J\u0017\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0018\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u001b\u0010%\u001a\u00020!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u0015\u001a\u0004\u0008#\u0010$\u00a8\u0006)"
    }
    d2 = {
        "Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;",
        "Lteam/opay/pay/home/clipboard/dialog/HomeClipboardAccountDialog;",
        "<init>",
        "()V",
        "",
        "a0",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "R",
        "onCancel",
        "Q",
        "",
        "jumpCheck",
        "Z",
        "(Z)V",
        "Lteam/opay/pay/home/clipboard/HomeClipboardViewModel;",
        "l",
        "Lid8;",
        "X",
        "()Lteam/opay/pay/home/clipboard/HomeClipboardViewModel;",
        "clipboardViewModel",
        "Lteam/opay/pay/api/BankUserInfo;",
        "m",
        "Lteam/opay/pay/api/BankUserInfo;",
        "bankUserInfo",
        "Lteam/opay/pay/api/BankStatus;",
        "n",
        "Lteam/opay/pay/api/BankStatus;",
        "bankStatus",
        "Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;",
        "o",
        "Y",
        "()Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;",
        "timeChecker",
        "p",
        "ACClipboardParms",
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
.field public static final p:Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final l:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Lteam/opay/pay/api/BankUserInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Lteam/opay/pay/api/BankStatus;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final o:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->p:Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/home/clipboard/dialog/HomeClipboardAccountDialog;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lteam/opay/pay/home/clipboard/HomeClipboardViewModel;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog$special$$inlined$activityViewModels$default$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog$special$$inlined$activityViewModels$default$2;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog$special$$inlined$activityViewModels$default$3;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->l:Lid8;

    .line 31
    .line 32
    new-instance v0, Lo;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lo;-><init>(Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->o:Lid8;

    .line 42
    .line 43
    return-void
.end method

.method public static synthetic V(Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->b0(Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic W(Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;)Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->c0(Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;)Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final Y()Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->o:Lid8;

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

.method private final a0()V
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->Y()Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;->a()V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lteam/opay/pay/home/tabs/FirstTransferDialog;->l:Lteam/opay/pay/home/tabs/FirstTransferDialog$Companion;

    .line 11
    .line 12
    iget-object v2, v0, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->m:Lteam/opay/pay/api/BankUserInfo;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2}, Lteam/opay/pay/api/BankUserInfo;->getBankAccountName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    move-object v8, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v8, v3

    .line 24
    :goto_0
    iget-object v2, v0, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->m:Lteam/opay/pay/api/BankUserInfo;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v2}, Lteam/opay/pay/api/BankUserInfo;->getRecipientAccount()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object v2, v3

    .line 34
    :goto_1
    const-string v9, ""

    .line 35
    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    move-object v2, v9

    .line 39
    :cond_2
    invoke-static {v2}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v4, v0, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->n:Lteam/opay/pay/api/BankStatus;

    .line 44
    .line 45
    if-eqz v4, :cond_3

    .line 46
    .line 47
    invoke-virtual {v4}, Lteam/opay/pay/api/BankStatus;->getBank()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    move-object/from16 v31, v4

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    move-object/from16 v31, v3

    .line 55
    .line 56
    :goto_2
    iget-object v4, v0, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->n:Lteam/opay/pay/api/BankStatus;

    .line 57
    .line 58
    if-eqz v4, :cond_4

    .line 59
    .line 60
    invoke-virtual {v4}, Lteam/opay/pay/api/BankStatus;->getLogoUrl()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    move-object/from16 v30, v4

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_4
    move-object/from16 v30, v3

    .line 68
    .line 69
    :goto_3
    iget-object v4, v0, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->m:Lteam/opay/pay/api/BankUserInfo;

    .line 70
    .line 71
    if-eqz v4, :cond_5

    .line 72
    .line 73
    invoke-virtual {v4}, Lteam/opay/pay/api/BankUserInfo;->getErrorMsg()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    :cond_5
    move-object/from16 v29, v3

    .line 78
    .line 79
    new-instance v3, Lteam/opay/pay/transfer/contact/bean/TransferContactData;

    .line 80
    .line 81
    move-object v4, v3

    .line 82
    const/16 v39, 0x1

    .line 83
    .line 84
    const/16 v40, 0x0

    .line 85
    .line 86
    const/4 v5, 0x0

    .line 87
    const/4 v6, 0x0

    .line 88
    const/4 v7, 0x0

    .line 89
    const/4 v10, 0x0

    .line 90
    const/4 v11, 0x0

    .line 91
    const/4 v12, 0x0

    .line 92
    const/4 v13, 0x0

    .line 93
    const/4 v14, 0x0

    .line 94
    const/4 v15, 0x0

    .line 95
    const/16 v16, 0x0

    .line 96
    .line 97
    const/16 v17, 0x0

    .line 98
    .line 99
    const/16 v18, 0x0

    .line 100
    .line 101
    const/16 v19, 0x0

    .line 102
    .line 103
    const/16 v20, 0x0

    .line 104
    .line 105
    const/16 v21, 0x0

    .line 106
    .line 107
    const/16 v22, 0x0

    .line 108
    .line 109
    const/16 v23, 0x0

    .line 110
    .line 111
    const/16 v24, 0x0

    .line 112
    .line 113
    const/16 v25, 0x0

    .line 114
    .line 115
    const/16 v26, 0x0

    .line 116
    .line 117
    const/16 v27, 0x0

    .line 118
    .line 119
    const/16 v28, 0x0

    .line 120
    .line 121
    const/16 v32, 0x0

    .line 122
    .line 123
    const/16 v33, 0x0

    .line 124
    .line 125
    const/16 v34, 0x0

    .line 126
    .line 127
    const/16 v35, 0x0

    .line 128
    .line 129
    const/16 v36, 0x0

    .line 130
    .line 131
    const/16 v37, 0x0

    .line 132
    .line 133
    const v38, -0x7000019

    .line 134
    .line 135
    .line 136
    move-object/from16 v41, v9

    .line 137
    .line 138
    move-object v9, v2

    .line 139
    invoke-direct/range {v4 .. v40}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/transfer/contact/bean/TransferOpayContact;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lteam/opay/core/api/graphql/StampDutyInfo;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 140
    .line 141
    .line 142
    sget-object v2, Lteam/opay/core/api/GraphQL$ServiceType;->BANK:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 143
    .line 144
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$ServiceType;->getValue()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    new-instance v4, Lp;

    .line 149
    .line 150
    invoke-direct {v4, v0}, Lp;-><init>(Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;)V

    .line 151
    .line 152
    .line 153
    move-object/from16 v5, v41

    .line 154
    .line 155
    invoke-virtual {v1, v3, v5, v2, v4}, Lteam/opay/pay/home/tabs/FirstTransferDialog$Companion;->a(Lteam/opay/pay/transfer/contact/bean/TransferContactData;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lteam/opay/pay/home/tabs/FirstTransferDialog;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    if-eqz v2, :cond_6

    .line 164
    .line 165
    invoke-static {v2, v1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 166
    .line 167
    .line 168
    :cond_6
    return-void
.end method

.method public static final b0(Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->Z(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method public static final c0(Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;)Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;
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
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p0, v1}, Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;-><init>(Lag8;Z)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method


# virtual methods
.method public Q()V
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
    const-string v2, "home_popup_ac_close_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public R()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->m:Lteam/opay/pay/api/BankUserInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/api/BankUserInfo;->getErrorMsg()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-direct {p0}, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->a0()V

    .line 22
    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->Z(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 29
    .line 30
    .line 31
    :goto_2
    sget-object v0, Lx7b;->a:Lx7b;

    .line 32
    .line 33
    const-string v2, "home_popup_aa_ac_transfer_click"

    .line 34
    .line 35
    new-array v1, v1, [Lkotlin/Pair;

    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final X()Lteam/opay/pay/home/clipboard/HomeClipboardViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->l:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/home/clipboard/HomeClipboardViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final Z(Z)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->X()Lteam/opay/pay/home/clipboard/HomeClipboardViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lteam/opay/pay/home/clipboard/HomeClipboardViewModel;->q()Lteam/opay/pay/home/clipboard/parser/ClipboardBankLookupResult;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-virtual {v0}, Lteam/opay/pay/home/clipboard/parser/ClipboardBankLookupResult;->a()Lteam/opay/pay/api/BankUserInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-direct {p0}, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->Y()Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const-string v6, ""

    .line 38
    .line 39
    invoke-direct {v2, v3, v6, v4, v5}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZLteam/opay/pay/transfer/contact/view/TransferConfigChecker;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->Y()Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;->c()Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->Z(Ljava/lang/Boolean;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lteam/opay/pay/home/clipboard/parser/ClipboardBankLookupResult;->a()Lteam/opay/pay/api/BankUserInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v2, v3}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->V(Lteam/opay/pay/api/BankUserInfo;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, p1}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->Y(Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lteam/opay/pay/home/clipboard/parser/ClipboardBankLookupResult;->b()Lteam/opay/pay/api/BankStatus;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v1}, Lteam/opay/pay/api/BankUserInfo;->getBankAccountName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-nez p1, :cond_2

    .line 72
    .line 73
    move-object v4, v6

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    move-object v4, p1

    .line 76
    :goto_0
    invoke-virtual {v1}, Lteam/opay/pay/api/BankUserInfo;->getRecipientAccount()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-nez p1, :cond_3

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    move-object v6, p1

    .line 84
    :goto_1
    invoke-static {v6}, Loj2;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    iget-object p1, p0, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->n:Lteam/opay/pay/api/BankStatus;

    .line 89
    .line 90
    if-eqz p1, :cond_4

    .line 91
    .line 92
    invoke-virtual {p1}, Lteam/opay/pay/api/BankStatus;->getLogoUrl()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    :goto_2
    move-object v6, p1

    .line 97
    goto :goto_3

    .line 98
    :cond_4
    const/4 p1, 0x0

    .line 99
    goto :goto_2

    .line 100
    :goto_3
    const/4 v7, 0x1

    .line 101
    invoke-virtual/range {v2 .. v7}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->D(Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public onCancel()V
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
    const-string v2, "home_popup_aa_ac_ignore_click"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 9
    .line 10
    .line 11
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
    invoke-virtual {p0}, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->X()Lteam/opay/pay/home/clipboard/HomeClipboardViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lteam/opay/pay/home/clipboard/HomeClipboardViewModel;->q()Lteam/opay/pay/home/clipboard/parser/ClipboardBankLookupResult;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 p2, 0x0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lteam/opay/pay/home/clipboard/parser/ClipboardBankLookupResult;->a()Lteam/opay/pay/api/BankUserInfo;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object p1, p2

    .line 26
    :goto_0
    iput-object p1, p0, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->m:Lteam/opay/pay/api/BankUserInfo;

    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->X()Lteam/opay/pay/home/clipboard/HomeClipboardViewModel;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lteam/opay/pay/home/clipboard/HomeClipboardViewModel;->q()Lteam/opay/pay/home/clipboard/parser/ClipboardBankLookupResult;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Lteam/opay/pay/home/clipboard/parser/ClipboardBankLookupResult;->b()Lteam/opay/pay/api/BankStatus;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move-object p1, p2

    .line 44
    :goto_1
    iput-object p1, p0, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->n:Lteam/opay/pay/api/BankStatus;

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
    iget-object p1, p1, Lr93;->j:Landroid/widget/TextView;

    .line 53
    .line 54
    const-string v0, "tvName"

    .line 55
    .line 56
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

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
    iget-object p1, p1, Lr93;->f:Landroid/widget/ImageView;

    .line 69
    .line 70
    const-string v0, "icLogo"

    .line 71
    .line 72
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lr93;

    .line 83
    .line 84
    iget-object p1, p1, Lr93;->j:Landroid/widget/TextView;

    .line 85
    .line 86
    iget-object v1, p0, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->m:Lteam/opay/pay/api/BankUserInfo;

    .line 87
    .line 88
    if-eqz v1, :cond_2

    .line 89
    .line 90
    invoke-virtual {v1}, Lteam/opay/pay/api/BankUserInfo;->getBankAccountName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    goto :goto_2

    .line 95
    :cond_2
    move-object v1, p2

    .line 96
    :goto_2
    iget-object v2, p0, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->n:Lteam/opay/pay/api/BankStatus;

    .line 97
    .line 98
    if-eqz v2, :cond_3

    .line 99
    .line 100
    invoke-virtual {v2}, Lteam/opay/pay/api/BankStatus;->getBank()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    goto :goto_3

    .line 105
    :cond_3
    move-object v2, p2

    .line 106
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v1, " | "

    .line 115
    .line 116
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Lr93;

    .line 134
    .line 135
    iget-object p1, p1, Lr93;->k:Landroid/widget/TextView;

    .line 136
    .line 137
    iget-object v1, p0, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->m:Lteam/opay/pay/api/BankUserInfo;

    .line 138
    .line 139
    if-eqz v1, :cond_4

    .line 140
    .line 141
    invoke-virtual {v1}, Lteam/opay/pay/api/BankUserInfo;->getRecipientAccount()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    goto :goto_4

    .line 146
    :cond_4
    move-object v1, p2

    .line 147
    :goto_4
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lteam/opay/core/base/BaseDialogFragmentV2;->getBinding()Lxyf;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Lr93;

    .line 155
    .line 156
    iget-object p1, p1, Lr93;->f:Landroid/widget/ImageView;

    .line 157
    .line 158
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lteam/opay/pay/home/clipboard/dialog/ACHomeClipboardDialog;->n:Lteam/opay/pay/api/BankStatus;

    .line 162
    .line 163
    if-eqz v0, :cond_5

    .line 164
    .line 165
    invoke-virtual {v0}, Lteam/opay/pay/api/BankStatus;->getLogoUrl()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    goto :goto_5

    .line 170
    :cond_5
    move-object v0, p2

    .line 171
    :goto_5
    const/4 v1, 0x2

    .line 172
    invoke-static {p1, v0, p2, v1, p2}, Lme7;->b(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    sget-object p1, Lx7b;->a:Lx7b;

    .line 176
    .line 177
    const/4 p2, 0x0

    .line 178
    new-array p2, p2, [Lkotlin/Pair;

    .line 179
    .line 180
    const-string v0, "home_popup_aa_ac_page_show"

    .line 181
    .line 182
    invoke-virtual {p1, v0, p2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 183
    .line 184
    .line 185
    return-void
.end method
