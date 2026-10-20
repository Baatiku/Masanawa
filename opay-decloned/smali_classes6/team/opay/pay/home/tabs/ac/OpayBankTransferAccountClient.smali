.class public final Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;
.super Ljava/lang/Object;
.source "OpayBankTransferAccountClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient$Companion;,
        Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u0000 \u0083\u00012\u00020\u0001:\u0002\u0084\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\'\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J!\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0011J)\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0015J+\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00042\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u000f0\u0019H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ1\u0010!\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u00062\u0008\u0008\u0002\u0010 \u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008!\u0010\"J!\u0010$\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00122\u0008\u0010#\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u0017\u0010\'\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\'\u0010(JG\u0010+\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00122\u0008\u0010#\u001a\u0004\u0018\u00010\u00042\u0008\u0010)\u001a\u0004\u0018\u00010\u00042\u0006\u0010*\u001a\u00020\u00042\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000f0\u0019H\u0002\u00a2\u0006\u0004\u0008+\u0010,JQ\u00100\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00122\u0008\u0010-\u001a\u0004\u0018\u00010\u00042\u0008\u0010#\u001a\u0004\u0018\u00010\u00042\u0008\u0010)\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\u00062\u0008\u0008\u0002\u0010.\u001a\u00020\u00062\u0008\u0008\u0002\u0010/\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u00080\u00101J\u0015\u00103\u001a\u00020\u000f2\u0006\u00102\u001a\u00020\u0004\u00a2\u0006\u0004\u00083\u00104J\u0017\u00106\u001a\u00020\u000f2\u0008\u00105\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u00086\u00107J\u0017\u00109\u001a\u00020\u000f2\u0008\u0010\r\u001a\u0004\u0018\u000108\u00a2\u0006\u0004\u00089\u0010:J\u0015\u0010<\u001a\u00020\u000f2\u0006\u0010;\u001a\u00020\u0006\u00a2\u0006\u0004\u0008<\u0010=J\u001f\u0010A\u001a\u00020\u000f2\u0008\u0010?\u001a\u0004\u0018\u00010>2\u0006\u0010@\u001a\u00020\u0004\u00a2\u0006\u0004\u0008A\u0010BJ\u0019\u0010C\u001a\u00020\u00122\n\u0008\u0002\u0010?\u001a\u0004\u0018\u00010>\u00a2\u0006\u0004\u0008C\u0010DJw\u0010L\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020\u00042\u0006\u0010E\u001a\u00020\u00042\u0006\u0010F\u001a\u00020\u00042\u0006\u0010G\u001a\u00020\u00042\u0006\u0010H\u001a\u0002082\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00062\u0008\u0008\u0002\u0010I\u001a\u00020\u00062\u0006\u0010;\u001a\u00020\u00062\u0008\u00105\u001a\u0004\u0018\u00010\u00062\u0008\u0010@\u001a\u0004\u0018\u00010\u00042\u0010\u0008\u0002\u0010K\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010J\u00a2\u0006\u0004\u0008L\u0010MJ/\u0010R\u001a\u00020\u000f2\u0006\u0010N\u001a\u00020\u00042\u0006\u0010O\u001a\u00020\u00042\u0006\u0010P\u001a\u00020\u00042\u0008\u0008\u0002\u0010Q\u001a\u00020\u0004\u00a2\u0006\u0004\u0008R\u0010SJ5\u0010V\u001a\u00020\u000f2\u0006\u0010T\u001a\u00020\u00042\u001e\u0008\u0002\u0010\u001b\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000f\u0018\u00010U\u00a2\u0006\u0004\u0008V\u0010WJ\'\u0010X\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0006\u00a2\u0006\u0004\u0008X\u0010\u0015J_\u0010Z\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00122\u0008\u0010-\u001a\u0004\u0018\u00010\u00042\u0008\u0010#\u001a\u0004\u0018\u00010\u00042\u0008\u0010)\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010Y\u001a\u00020\u00062\u0006\u0010;\u001a\u00020\u00062\u0008\u00105\u001a\u0004\u0018\u00010\u00062\u0008\u0010@\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008Z\u0010[Ju\u0010^\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00122\u0008\u0010-\u001a\u0004\u0018\u00010\u00042\u0008\u0010#\u001a\u0004\u0018\u00010\u00042\u0008\u0010)\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\u00062\u0008\u0008\u0002\u0010.\u001a\u00020\u00062\u0008\u0008\u0002\u0010\\\u001a\u00020\u00062\u0008\u0008\u0002\u0010 \u001a\u00020\u00062\u0008\u0008\u0002\u0010/\u001a\u00020\u00062\u0010\u0008\u0002\u0010]\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010J\u00a2\u0006\u0004\u0008^\u0010_J;\u0010`\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00122\u0008\u0010-\u001a\u0004\u0018\u00010\u00042\u0008\u0010#\u001a\u0004\u0018\u00010\u00042\u0008\u0010)\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\u0006\u00a2\u0006\u0004\u0008`\u0010aJ+\u0010d\u001a\u00020\u000f2\u0006\u0010b\u001a\u00020\u00042\u0006\u0010c\u001a\u00020\u00042\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u000f0J\u00a2\u0006\u0004\u0008d\u0010eJ\r\u0010f\u001a\u00020\u000f\u00a2\u0006\u0004\u0008f\u0010gR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008h\u0010i\u001a\u0004\u0008j\u0010kR\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008l\u0010m\u001a\u0004\u0008n\u0010\u001f\"\u0004\u0008o\u00104R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008p\u00106\u001a\u0004\u0008\u0007\u0010qR\u0016\u0010\t\u001a\u0004\u0018\u00010\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008r\u0010sR\u0014\u0010w\u001a\u00020t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008u\u0010vR\u001b\u0010}\u001a\u00020x8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008y\u0010z\u001a\u0004\u0008{\u0010|R\u0016\u0010I\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008~\u00106R\u0016\u0010;\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u007f\u00106R\u001a\u00105\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0080\u0001\u0010\u0081\u0001R\u0019\u0010@\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0082\u0001\u0010m\u00a8\u0006\u0085\u0001"
    }
    d2 = {
        "Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;",
        "",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "",
        "from",
        "",
        "isNewUser",
        "Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;",
        "timeChecker",
        "<init>",
        "(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZLteam/opay/pay/transfer/contact/view/TransferConfigChecker;)V",
        "Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;",
        "data",
        "fill",
        "",
        "L",
        "(Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Z)V",
        "Lteam/opay/pay/api/BankStatus;",
        "bankStatus",
        "b0",
        "(Lteam/opay/pay/api/BankStatus;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Z)V",
        "T",
        "x",
        "imgUrl",
        "Lkotlin/Function1;",
        "",
        "callback",
        "U",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
        "v",
        "()Ljava/lang/String;",
        "showBankAlert",
        "F",
        "(Lteam/opay/pay/api/BankStatus;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;ZZ)V",
        "accountNumber",
        "a0",
        "(Lteam/opay/pay/api/BankStatus;Ljava/lang/String;)Z",
        "bankCode",
        "C",
        "(Ljava/lang/String;)Z",
        "bankLogo",
        "flag",
        "d0",
        "(Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
        "accountName",
        "jumpCheckWhenFirstShown",
        "shouldCheckOuealth",
        "f0",
        "(Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V",
        "value",
        "W",
        "(Ljava/lang/String;)V",
        "timeChecked",
        "Z",
        "(Ljava/lang/Boolean;)V",
        "Lteam/opay/pay/api/BankUserInfo;",
        "V",
        "(Lteam/opay/pay/api/BankUserInfo;)V",
        "jumpCheck",
        "Y",
        "(Z)V",
        "Lteam/opay/pay/transfer/contact/bean/TransferContactData;",
        "item",
        "busniessSceneSource",
        "N",
        "(Lteam/opay/pay/transfer/contact/bean/TransferContactData;Ljava/lang/String;)V",
        "t",
        "(Lteam/opay/pay/transfer/contact/bean/TransferContactData;)Lteam/opay/pay/api/BankStatus;",
        "bankName",
        "bankIcon",
        "bankAccountNumber",
        "bankUserInfo",
        "isFromPaste",
        "Lkotlin/Function0;",
        "opayBankErrorCallBack",
        "R",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/api/BankUserInfo;ZZZLjava/lang/Boolean;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V",
        "name",
        "phone",
        "photoUrl",
        "fromService",
        "P",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "code",
        "Lkotlin/Function2;",
        "o",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V",
        "r",
        "fromPaste",
        "K",
        "(Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/Boolean;Ljava/lang/String;)V",
        "showLoading",
        "jumpFinishCallback",
        "E",
        "(Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLkotlin/jvm/functions/Function0;)V",
        "D",
        "(Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V",
        "content",
        "bank",
        "e0",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V",
        "s",
        "()V",
        "a",
        "Landroidx/fragment/app/Fragment;",
        "w",
        "()Landroidx/fragment/app/Fragment;",
        "b",
        "Ljava/lang/String;",
        "getFrom",
        "X",
        "c",
        "()Z",
        "d",
        "Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;",
        "Lteam/opay/core/settings/NoClearStorage;",
        "e",
        "Lteam/opay/core/settings/NoClearStorage;",
        "settingsStorage",
        "Lteam/opay/pay/home/tabs/BankTransferViewModel;",
        "f",
        "Lid8;",
        "B",
        "()Lteam/opay/pay/home/tabs/BankTransferViewModel;",
        "viewModel",
        "g",
        "h",
        "i",
        "Ljava/lang/Boolean;",
        "j",
        "k",
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
.field public static final k:Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final l:Lid8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid8<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Z

.field public final d:Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Lteam/opay/core/settings/NoClearStorage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->k:Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient$Companion;

    .line 8
    .line 9
    new-instance v0, Lfqa;

    .line 10
    .line 11
    invoke-direct {v0}, Lfqa;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->l:Lid8;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZLteam/opay/pay/transfer/contact/view/TransferConfigChecker;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "from"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->c:Z

    iput-object p4, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->d:Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;

    .line 2
    new-instance p1, Lteam/opay/core/settings/NoClearStorage;

    sget-object p2, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    invoke-virtual {p2}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    move-result-object p2

    invoke-virtual {p2}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->e:Lteam/opay/core/settings/NoClearStorage;

    .line 3
    new-instance p1, Liqa;

    invoke-direct {p1, p0}, Liqa;-><init>(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;)V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->f:Lid8;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZLteam/opay/pay/transfer/contact/view/TransferConfigChecker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZLteam/opay/pay/transfer/contact/view/TransferConfigChecker;)V

    return-void
.end method

.method public static final A(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankStatus;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Z)Lkotlin/Unit;
    .locals 7

    .line 1
    const/16 v5, 0x8

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v4, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move v3, p3

    .line 9
    invoke-static/range {v0 .. v6}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->H(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankStatus;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;ZZILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public static synthetic G(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 14

    .line 1
    move/from16 v0, p11

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x20

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v9, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move/from16 v9, p6

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x40

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const/4 v10, 0x1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move/from16 v10, p7

    .line 20
    .line 21
    :goto_1
    and-int/lit16 v1, v0, 0x80

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    const/4 v11, 0x1

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move/from16 v11, p8

    .line 28
    .line 29
    :goto_2
    and-int/lit16 v1, v0, 0x100

    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    const/4 v12, 0x0

    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move/from16 v12, p9

    .line 36
    .line 37
    :goto_3
    and-int/lit16 v0, v0, 0x200

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    move-object v13, v0

    .line 43
    goto :goto_4

    .line 44
    :cond_4
    move-object/from16 v13, p10

    .line 45
    .line 46
    :goto_4
    move-object v3, p0

    .line 47
    move-object v4, p1

    .line 48
    move-object/from16 v5, p2

    .line 49
    .line 50
    move-object/from16 v6, p3

    .line 51
    .line 52
    move-object/from16 v7, p4

    .line 53
    .line 54
    move/from16 v8, p5

    .line 55
    .line 56
    invoke-virtual/range {v3 .. v13}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->E(Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLkotlin/jvm/functions/Function0;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public static synthetic H(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankStatus;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;ZZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x8

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->F(Lteam/opay/pay/api/BankStatus;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;ZZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final I(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lkotlin/jvm/functions/Function0;Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLteam/opay/pay/api/BankStatus;Z)Lkotlin/Unit;
    .locals 14

    .line 1
    move-object v9, p0

    .line 2
    move-object/from16 v10, p2

    .line 3
    .line 4
    sget-object v0, Lteam/opay/pay/util/OpayLoadingWindow;->m:Lteam/opay/pay/util/OpayLoadingWindow$Companion;

    .line 5
    .line 6
    iget-object v1, v9, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lteam/opay/pay/util/OpayLoadingWindow$Companion;->a(Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    if-eqz p10, :cond_0

    .line 12
    .line 13
    if-eqz p1, :cond_9

    .line 14
    .line 15
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    goto/16 :goto_7

    .line 19
    .line 20
    :cond_0
    move-object/from16 v11, p3

    .line 21
    .line 22
    invoke-virtual {p0, v10, v11}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a0(Lteam/opay/pay/api/BankStatus;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->r0()Lteam/opay/pay/api/BankUserInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Lteam/opay/pay/api/BankUserInfo;->getBankPopUp()Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x0

    .line 50
    :goto_0
    if-eqz v0, :cond_2

    .line 51
    .line 52
    const-string v0, "2"

    .line 53
    .line 54
    :goto_1
    move-object v12, v0

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    const-string v0, "1"

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :goto_2
    new-instance v13, Lgqa;

    .line 60
    .line 61
    move-object v0, v13

    .line 62
    move-object v1, p0

    .line 63
    move-object/from16 v2, p2

    .line 64
    .line 65
    move-object/from16 v3, p5

    .line 66
    .line 67
    move-object/from16 v4, p3

    .line 68
    .line 69
    move-object/from16 v5, p4

    .line 70
    .line 71
    move/from16 v6, p6

    .line 72
    .line 73
    move/from16 v7, p7

    .line 74
    .line 75
    move-object v8, p1

    .line 76
    invoke-direct/range {v0 .. v8}, Lgqa;-><init>(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;)V

    .line 77
    .line 78
    .line 79
    move-object/from16 p5, p0

    .line 80
    .line 81
    move-object/from16 p6, p2

    .line 82
    .line 83
    move-object/from16 p7, p3

    .line 84
    .line 85
    move-object/from16 p8, p4

    .line 86
    .line 87
    move-object/from16 p9, v12

    .line 88
    .line 89
    move-object/from16 p10, v13

    .line 90
    .line 91
    invoke-virtual/range {p5 .. p10}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->d0(Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 92
    .line 93
    .line 94
    goto :goto_7

    .line 95
    :cond_3
    const/4 v0, 0x0

    .line 96
    if-eqz p9, :cond_4

    .line 97
    .line 98
    invoke-virtual/range {p9 .. p9}, Lteam/opay/pay/api/BankStatus;->getBankStatusType()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    goto :goto_3

    .line 103
    :cond_4
    move-object v1, v0

    .line 104
    :goto_3
    invoke-virtual {v10, v1}, Lteam/opay/pay/api/BankStatus;->setBankStatusType(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    if-eqz p9, :cond_5

    .line 108
    .line 109
    invoke-virtual/range {p9 .. p9}, Lteam/opay/pay/api/BankStatus;->getBankStatusDesc()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    goto :goto_4

    .line 114
    :cond_5
    move-object v1, v0

    .line 115
    :goto_4
    invoke-virtual {v10, v1}, Lteam/opay/pay/api/BankStatus;->setBankStatusDesc(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    if-eqz p9, :cond_6

    .line 119
    .line 120
    invoke-virtual/range {p9 .. p9}, Lteam/opay/pay/api/BankStatus;->getGrayscaleFlag()Ljava/lang/Boolean;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    goto :goto_5

    .line 125
    :cond_6
    move-object v1, v0

    .line 126
    :goto_5
    invoke-virtual {v10, v1}, Lteam/opay/pay/api/BankStatus;->setGrayscaleFlag(Ljava/lang/Boolean;)V

    .line 127
    .line 128
    .line 129
    if-eqz p9, :cond_7

    .line 130
    .line 131
    invoke-virtual/range {p9 .. p9}, Lteam/opay/pay/api/BankStatus;->getWarningText()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    goto :goto_6

    .line 136
    :cond_7
    move-object v1, v0

    .line 137
    :goto_6
    invoke-virtual {v10, v1}, Lteam/opay/pay/api/BankStatus;->setWarningText(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    if-eqz p9, :cond_8

    .line 141
    .line 142
    invoke-virtual/range {p9 .. p9}, Lteam/opay/pay/api/BankStatus;->getAvgTime()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    :cond_8
    invoke-virtual {v10, v0}, Lteam/opay/pay/api/BankStatus;->setAvgTime(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    move-object v0, p0

    .line 150
    move-object/from16 v1, p2

    .line 151
    .line 152
    move-object/from16 v2, p5

    .line 153
    .line 154
    move-object/from16 v3, p3

    .line 155
    .line 156
    move-object/from16 v4, p4

    .line 157
    .line 158
    move/from16 v5, p6

    .line 159
    .line 160
    move/from16 v6, p7

    .line 161
    .line 162
    move/from16 v7, p8

    .line 163
    .line 164
    invoke-virtual/range {v0 .. v7}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->f0(Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 165
    .line 166
    .line 167
    if-eqz p1, :cond_9

    .line 168
    .line 169
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    :cond_9
    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 173
    .line 174
    return-object v0
.end method

.method public static final J(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Z)Lkotlin/Unit;
    .locals 10

    .line 1
    if-eqz p8, :cond_0

    .line 2
    .line 3
    const/16 v8, 0x40

    .line 4
    .line 5
    const/4 v9, 0x0

    .line 6
    const/4 v7, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move-object v4, p4

    .line 12
    move v5, p5

    .line 13
    move/from16 v6, p6

    .line 14
    .line 15
    invoke-static/range {v0 .. v9}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->g0(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->v0()Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    if-eqz p7, :cond_1

    .line 33
    .line 34
    invoke-interface/range {p7 .. p7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object v0
.end method

.method public static final M(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;ZZ)Lkotlin/Unit;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    invoke-static {p0, v2, v1, v2}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->u(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/transfer/contact/bean/TransferContactData;ILjava/lang/Object;)Lteam/opay/pay/api/BankStatus;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;->getBankName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Lteam/opay/pay/api/BankStatus;->setBank(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;->getBankCode()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Lteam/opay/pay/api/BankStatus;->setBankCode(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    move-object v3, p1

    .line 25
    move/from16 v5, p2

    .line 26
    .line 27
    invoke-virtual {p0, v1, p1, v5}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->b0(Lteam/opay/pay/api/BankStatus;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Z)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_0
    move-object v3, p1

    .line 33
    move/from16 v5, p2

    .line 34
    .line 35
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;->getBankUserInfo()Lteam/opay/pay/api/BankUserInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v4}, Lteam/opay/pay/api/BankUserInfo;->getUserRoleAllowAAFlag()Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;->getBankUserInfo()Lteam/opay/pay/api/BankUserInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v4}, Lteam/opay/pay/api/BankUserInfo;->getOpayUserFlag()Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    sget-object v1, Lteam/opay/pay/util/OpayLoadingWindow;->m:Lteam/opay/pay/util/OpayLoadingWindow$Companion;

    .line 66
    .line 67
    iget-object v2, v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Lteam/opay/pay/util/OpayLoadingWindow$Companion;->a(Landroidx/fragment/app/Fragment;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual/range {p0 .. p2}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->T(Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Z)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    sget-object v4, Lteam/opay/pay/util/OpayLoadingWindow;->m:Lteam/opay/pay/util/OpayLoadingWindow$Companion;

    .line 77
    .line 78
    iget-object v6, v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    .line 79
    .line 80
    invoke-virtual {v4, v6}, Lteam/opay/pay/util/OpayLoadingWindow$Companion;->a(Landroidx/fragment/app/Fragment;)V

    .line 81
    .line 82
    .line 83
    invoke-static {p0, v2, v1, v2}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->u(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/transfer/contact/bean/TransferContactData;ILjava/lang/Object;)Lteam/opay/pay/api/BankStatus;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;->getBankName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v1, v2}, Lteam/opay/pay/api/BankStatus;->setBank(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;->getBankCode()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v1, v2}, Lteam/opay/pay/api/BankStatus;->setBankCode(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;->getBankUserInfo()Lteam/opay/pay/api/BankUserInfo;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v2}, Lteam/opay/pay/api/BankUserInfo;->getBankAccountName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;->getBankAccountNumber()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;->getBankIcon()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    const/16 v11, 0x3e0

    .line 118
    .line 119
    const/4 v12, 0x0

    .line 120
    const/4 v7, 0x0

    .line 121
    const/4 v8, 0x0

    .line 122
    const/4 v9, 0x0

    .line 123
    const/4 v10, 0x0

    .line 124
    const/4 v13, 0x0

    .line 125
    move-object v0, p0

    .line 126
    move-object v3, v4

    .line 127
    move-object v4, v6

    .line 128
    move/from16 v5, p2

    .line 129
    .line 130
    move v6, v7

    .line 131
    move v7, v8

    .line 132
    move v8, v9

    .line 133
    move v9, v10

    .line 134
    move-object v10, v13

    .line 135
    invoke-static/range {v0 .. v12}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->G(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 139
    .line 140
    return-object v0
.end method

.method public static final O(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/transfer/contact/bean/TransferContactData;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 16

    move-object/from16 v0, p0

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual/range {p3 .. p3}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v15

    :goto_0
    sget-object v2, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    const-string v3, ""

    if-ne v1, v2, :cond_9

    invoke-virtual/range {p3 .. p3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/pay/api/BankUserInfo;

    invoke-virtual {v1, v2}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->b1(Lteam/opay/pay/api/BankUserInfo;)V

    .line 3
    sget-object v1, Lteam/opay/pay/util/OpayLoadingWindow;->m:Lteam/opay/pay/util/OpayLoadingWindow$Companion;

    iget-object v2, v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Lteam/opay/pay/util/OpayLoadingWindow$Companion;->a(Landroidx/fragment/app/Fragment;)V

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v15

    :goto_1
    if-nez v1, :cond_2

    move-object v1, v3

    :cond_2
    if-eqz p1, :cond_3

    .line 5
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v15

    :goto_2
    if-nez v2, :cond_4

    move-object v2, v3

    :cond_4
    if-eqz p1, :cond_5

    .line 6
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    move-object v4, v15

    :goto_3
    if-nez v4, :cond_6

    move-object v4, v3

    :cond_6
    if-eqz p1, :cond_7

    .line 7
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankAccountNo()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_7
    move-object v5, v15

    :goto_4
    if-nez v5, :cond_8

    move-object v5, v3

    .line 8
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lteam/opay/pay/api/BankUserInfo;

    const/16 v12, 0x440

    const/4 v13, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    move-object/from16 v10, p2

    .line 9
    invoke-static/range {v0 .. v13}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->S(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/api/BankUserInfo;ZZZLjava/lang/Boolean;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto/16 :goto_c

    :cond_9
    if-eqz p3, :cond_a

    .line 10
    invoke-virtual/range {p3 .. p3}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    move-result-object v1

    goto :goto_5

    :cond_a
    move-object v1, v15

    :goto_5
    sget-object v2, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    if-eq v1, v2, :cond_15

    .line 11
    sget-object v1, Lteam/opay/pay/util/OpayLoadingWindow;->m:Lteam/opay/pay/util/OpayLoadingWindow$Companion;

    iget-object v2, v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Lteam/opay/pay/util/OpayLoadingWindow$Companion;->a(Landroidx/fragment/app/Fragment;)V

    if-eqz p1, :cond_b

    .line 12
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->isOPayCard()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_f

    .line 13
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankAccountName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move-object v1, v3

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankAccountNo()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    move-object v2, v3

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    goto :goto_7

    :cond_e
    move-object v3, v4

    :goto_7
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->Q(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_c

    .line 14
    :cond_f
    invoke-virtual/range {p0 .. p1}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->t(Lteam/opay/pay/transfer/contact/bean/TransferContactData;)Lteam/opay/pay/api/BankStatus;

    move-result-object v1

    if-eqz p1, :cond_10

    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankAccountName()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_10
    move-object v2, v15

    :goto_8
    if-nez v2, :cond_11

    move-object v2, v3

    :cond_11
    if-eqz p1, :cond_12

    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankAccountNo()Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_12
    move-object v4, v15

    :goto_9
    if-nez v4, :cond_13

    goto :goto_a

    :cond_13
    move-object v3, v4

    :goto_a
    if-eqz p1, :cond_14

    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_14
    move-object v4, v15

    :goto_b
    const/16 v11, 0x3e0

    const/4 v12, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v12}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->G(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_15
    :goto_c
    if-eqz p3, :cond_16

    .line 15
    invoke-virtual/range {p3 .. p3}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    move-result-object v0

    goto :goto_d

    :cond_16
    move-object v0, v15

    :goto_d
    sget-object v1, Lteam/opay/core/android/arch/Status;->LOADING:Lteam/opay/core/android/arch/Status;

    if-eq v0, v1, :cond_1a

    .line 16
    sget-object v0, Lx7b;->a:Lx7b;

    if-eqz p3, :cond_17

    invoke-virtual/range {p3 .. p3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/pay/api/BankUserInfo;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lteam/opay/pay/api/BankUserInfo;->getOpayBankFlag()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_e

    :cond_17
    move-object v1, v15

    :goto_e
    const-string v2, "opayBankFlag"

    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    if-eqz p3, :cond_18

    .line 17
    invoke-virtual/range {p3 .. p3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lteam/opay/pay/api/BankUserInfo;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Lteam/opay/pay/api/BankUserInfo;->getOpayUserFlag()Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_f

    :cond_18
    move-object v2, v15

    :goto_f
    const-string v3, "opayUserFlag"

    invoke-static {v3, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    if-eqz p1, :cond_19

    .line 18
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->isOPayCard()Ljava/lang/Boolean;

    move-result-object v15

    :cond_19
    const-string v3, "isOPayCard"

    invoke-static {v3, v15}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Lkotlin/Pair;

    aput-object v1, v4, v14

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    .line 19
    const-string v1, "bank_transfer_account_click"

    invoke-virtual {v0, v1, v4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 20
    :cond_1a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public static synthetic Q(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x8

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const-string p4, "ACSelectOPay"

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic S(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/api/BankUserInfo;ZZZLjava/lang/Boolean;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 15

    .line 1
    move/from16 v0, p12

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x20

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v9, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move/from16 v9, p6

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x40

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const/4 v10, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move/from16 v10, p7

    .line 19
    .line 20
    :goto_1
    and-int/lit16 v0, v0, 0x400

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    move-object v14, v0

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-object/from16 v14, p11

    .line 28
    .line 29
    :goto_2
    move-object v3, p0

    .line 30
    move-object/from16 v4, p1

    .line 31
    .line 32
    move-object/from16 v5, p2

    .line 33
    .line 34
    move-object/from16 v6, p3

    .line 35
    .line 36
    move-object/from16 v7, p4

    .line 37
    .line 38
    move-object/from16 v8, p5

    .line 39
    .line 40
    move/from16 v11, p8

    .line 41
    .line 42
    move-object/from16 v12, p9

    .line 43
    .line 44
    move-object/from16 v13, p10

    .line 45
    .line 46
    invoke-virtual/range {v3 .. v14}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/api/BankUserInfo;ZZZLjava/lang/Boolean;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->q(Lkotlin/jvm/functions/Function2;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;ZZ)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->M(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;ZZ)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->n()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final c0(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Lteam/opay/pay/api/BankStatus;ZZ)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p4, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;->getBankUserInfo()Lteam/opay/pay/api/BankUserInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lteam/opay/pay/api/BankUserInfo;->getAccountName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const-string p3, ""

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    move-object p2, p3

    .line 16
    :cond_0
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;->getBankAccountNumber()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p4

    .line 20
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;->getBankUserInfo()Lteam/opay/pay/api/BankUserInfo;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lteam/opay/pay/api/BankUserInfo;->getPhotoUrl()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object p3, p1

    .line 32
    :goto_0
    const-string p1, "AC_to_AA_Merchant_Agreed"

    .line 33
    .line 34
    invoke-virtual {p0, p2, p4, p3, p1}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const/4 p4, 0x0

    .line 39
    invoke-virtual {p0, p2, p1, p3, p4}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->F(Lteam/opay/pay/api/BankStatus;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;ZZ)V

    .line 40
    .line 41
    .line 42
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 43
    .line 44
    return-object p0
.end method

.method public static synthetic d(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;)Lteam/opay/pay/home/tabs/BankTransferViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->h0(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;)Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lkotlin/jvm/functions/Function0;Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLteam/opay/pay/api/BankStatus;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p10}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->I(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lkotlin/jvm/functions/Function0;Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLteam/opay/pay/api/BankStatus;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/transfer/contact/bean/TransferContactData;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->O(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/transfer/contact/bean/TransferContactData;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankStatus;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->z(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankStatus;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g0(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)V
    .locals 10

    .line 1
    and-int/lit8 v0, p8, 0x20

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v8, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move/from16 v8, p6

    .line 9
    .line 10
    :goto_0
    and-int/lit8 v0, p8, 0x40

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/4 v9, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move/from16 v9, p7

    .line 17
    .line 18
    :goto_1
    move-object v2, p0

    .line 19
    move-object v3, p1

    .line 20
    move-object v4, p2

    .line 21
    move-object v5, p3

    .line 22
    move-object v6, p4

    .line 23
    move v7, p5

    .line 24
    invoke-virtual/range {v2 .. v9}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->f0(Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static synthetic h(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->J(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final h0(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;)Lteam/opay/pay/home/tabs/BankTransferViewModel;
    .locals 4

    .line 1
    iget-object p0, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    const-class v0, Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient$viewModel_delegate$lambda$0$$inlined$activityViewModels$default$1;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient$viewModel_delegate$lambda$0$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient$viewModel_delegate$lambda$0$$inlined$activityViewModels$default$2;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v2, v3, p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient$viewModel_delegate$lambda$0$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient$viewModel_delegate$lambda$0$$inlined$activityViewModels$default$3;

    .line 21
    .line 22
    invoke-direct {v3, p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient$viewModel_delegate$lambda$0$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Landroidx/fragment/app/Fragment;Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lid8;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p0}, Lid8;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 34
    .line 35
    return-object p0
.end method

.method public static synthetic i(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Lteam/opay/pay/api/BankStatus;ZZ)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->c0(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Lteam/opay/pay/api/BankStatus;ZZ)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lkotlin/jvm/functions/Function2;Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->p(Lkotlin/jvm/functions/Function2;Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankStatus;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->A(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankStatus;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lkotlin/jvm/internal/Ref$BooleanRef;Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankUserInfo;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Lteam/opay/pay/api/BankStatus;ZI)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->y(Lkotlin/jvm/internal/Ref$BooleanRef;Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankUserInfo;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Lteam/opay/pay/api/BankStatus;ZI)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic m()Lid8;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->l:Lid8;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final n()Ljava/util/Map;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final p(Lkotlin/jvm/functions/Function2;Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Ljava/lang/String;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    const/4 v2, -0x1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    sget-object v3, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient$a;->a:[I

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    aget v1, v3, v1

    .line 22
    .line 23
    :goto_1
    const/4 v3, 0x1

    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    const/4 p1, 0x2

    .line 27
    if-eq v1, p1, :cond_2

    .line 28
    .line 29
    goto/16 :goto_6

    .line 30
    .line 31
    :cond_2
    if-eqz p0, :cond_c

    .line 32
    .line 33
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-interface {p0, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    goto/16 :goto_6

    .line 39
    .line 40
    :cond_3
    invoke-virtual {p3}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    check-cast p3, Ljava/util/List;

    .line 45
    .line 46
    if-eqz p3, :cond_4

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-static {p3, v1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    check-cast p3, Lteam/opay/pay/api/BankStatus;

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_4
    move-object p3, v0

    .line 57
    :goto_2
    if-eqz p3, :cond_5

    .line 58
    .line 59
    invoke-virtual {p3}, Lteam/opay/pay/api/BankStatus;->getBankStatusType()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    goto :goto_3

    .line 64
    :cond_5
    move-object v1, v0

    .line 65
    :goto_3
    const-string v4, "2"

    .line 66
    .line 67
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    const-string v4, ""

    .line 72
    .line 73
    if-eqz v1, :cond_8

    .line 74
    .line 75
    invoke-virtual {p3}, Lteam/opay/pay/api/BankStatus;->getGrayscaleFlag()Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 80
    .line 81
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_8

    .line 86
    .line 87
    invoke-virtual {p3}, Lteam/opay/pay/api/BankStatus;->getWarningText()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    if-nez p2, :cond_6

    .line 92
    .line 93
    move-object p2, v4

    .line 94
    :cond_6
    invoke-virtual {p3}, Lteam/opay/pay/api/BankStatus;->getBank()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    if-nez p3, :cond_7

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_7
    move-object v4, p3

    .line 102
    :goto_4
    new-instance p3, Lpqa;

    .line 103
    .line 104
    invoke-direct {p3, p0}, Lpqa;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2, v4, p3}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->e0(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 108
    .line 109
    .line 110
    iget-object p0, p1, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    if-eqz p0, :cond_c

    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    if-eqz p0, :cond_c

    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 125
    .line 126
    .line 127
    invoke-static {p0}, Lli2;->f(Landroid/view/View;)V

    .line 128
    .line 129
    .line 130
    goto :goto_6

    .line 131
    :cond_8
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v1}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->r0()Lteam/opay/pay/api/BankUserInfo;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    if-eqz v1, :cond_9

    .line 140
    .line 141
    invoke-virtual {v1}, Lteam/opay/pay/api/BankUserInfo;->getAccountName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    :cond_9
    if-nez v0, :cond_a

    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_a
    move-object v4, v0

    .line 149
    :goto_5
    sget-object v0, Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig;->Companion:Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig$Companion;

    .line 150
    .line 151
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig$Companion;->b()Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    if-eqz v0, :cond_b

    .line 156
    .line 157
    const-string v1, "1"

    .line 158
    .line 159
    invoke-virtual {v0, v4, v1}, Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig;->isCountOver(Ljava/lang/String;Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-ne v0, v3, :cond_b

    .line 164
    .line 165
    sget-object v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->k:Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient$Companion;

    .line 166
    .line 167
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient$Companion;->a()Ljava/util/Map;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    iget-object p2, p1, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->e:Lteam/opay/core/settings/NoClearStorage;

    .line 179
    .line 180
    invoke-virtual {p2, v4}, Lteam/opay/core/settings/NoClearStorage;->J0(Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    iget-object p1, p1, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->e:Lteam/opay/core/settings/NoClearStorage;

    .line 185
    .line 186
    add-int/2addr p2, v3

    .line 187
    invoke-virtual {p1, v4, p2}, Lteam/opay/core/settings/NoClearStorage;->r2(Ljava/lang/String;I)V

    .line 188
    .line 189
    .line 190
    :cond_b
    if-eqz p0, :cond_c

    .line 191
    .line 192
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 193
    .line 194
    invoke-interface {p0, p3, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    :cond_c
    :goto_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 198
    .line 199
    return-object p0
.end method

.method public static final q(Lkotlin/jvm/functions/Function2;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p0, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method public static synthetic u(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/transfer/contact/bean/TransferContactData;ILjava/lang/Object;)Lteam/opay/pay/api/BankStatus;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->t(Lteam/opay/pay/transfer/contact/bean/TransferContactData;)Lteam/opay/pay/api/BankStatus;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final y(Lkotlin/jvm/internal/Ref$BooleanRef;Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankUserInfo;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Lteam/opay/pay/api/BankStatus;ZI)Lkotlin/Unit;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 10
    .line 11
    sget-object p0, Lteam/opay/pay/util/OpayLoadingWindow;->m:Lteam/opay/pay/util/OpayLoadingWindow$Companion;

    .line 12
    .line 13
    iget-object v0, p1, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lteam/opay/pay/util/OpayLoadingWindow$Companion;->a(Landroidx/fragment/app/Fragment;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p1, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    .line 19
    .line 20
    sget-object v0, Lteam/opay/pay/home/tabs/ac/GuideToOpayAccountTransferDialog;->u:Lteam/opay/pay/home/tabs/ac/GuideToOpayAccountTransferDialog$Companion;

    .line 21
    .line 22
    iget-boolean v4, p1, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->c:Z

    .line 23
    .line 24
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->K0()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    move-object v1, p2

    .line 33
    move v2, p6

    .line 34
    move-object v3, p3

    .line 35
    invoke-virtual/range {v0 .. v5}, Lteam/opay/pay/home/tabs/ac/GuideToOpayAccountTransferDialog$Companion;->a(Lteam/opay/pay/api/BankUserInfo;ILteam/opay/pay/home/tabs/ac/BankTransferInfoData;ZZ)Lteam/opay/pay/home/tabs/ac/GuideToOpayAccountTransferDialog;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    new-instance p6, Lqqa;

    .line 40
    .line 41
    invoke-direct {p6, p1, p4, p3, p5}, Lqqa;-><init>(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankStatus;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p6}, Lteam/opay/pay/home/tabs/ac/GuideToOpayAccountTransferDialog;->Y(Lkotlin/jvm/functions/Function0;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p0, p2}, Lteam/opay/pay/base/FragmentKt;->w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 48
    .line 49
    .line 50
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p0
.end method

.method public static final z(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankStatus;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Z)Lkotlin/Unit;
    .locals 7

    .line 1
    const/16 v5, 0x8

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v4, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move v3, p3

    .line 9
    invoke-static/range {v0 .. v6}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->H(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankStatus;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;ZZILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method public final B()Lteam/opay/pay/home/tabs/BankTransferViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->f:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final C(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig;->Companion:Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig$Companion;->a()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final D(Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 16
    .param p1    # Lteam/opay/pay/api/BankStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "bankStatus"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    .line 11
    .line 12
    new-instance v3, Landroid/content/Intent;

    .line 13
    .line 14
    iget-object v4, v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    .line 15
    .line 16
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const-class v5, Lteam/opay/pay/home/tabs/ac/OpayBankTransferActivityV3;

    .line 24
    .line 25
    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/BankStatus;->getBankCode()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v12

    .line 32
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/BankStatus;->getBank()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v11

    .line 36
    new-instance v4, Lteam/opay/pay/wallet/transferhistory/TransferHistory;

    .line 37
    .line 38
    const/16 v14, 0x41

    .line 39
    .line 40
    const/4 v15, 0x0

    .line 41
    const/4 v7, 0x0

    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v13, 0x0

    .line 44
    move-object v6, v4

    .line 45
    move-object/from16 v9, p3

    .line 46
    .line 47
    move-object/from16 v10, p2

    .line 48
    .line 49
    invoke-direct/range {v6 .. v15}, Lteam/opay/pay/wallet/transferhistory/TransferHistory;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 50
    .line 51
    .line 52
    move-object/from16 v5, p4

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Lteam/opay/pay/wallet/transferhistory/TransferHistory;->setIcon(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    if-eqz p5, :cond_3

    .line 58
    .line 59
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/BankStatus;->getBankStatusType()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    const-string v6, "1"

    .line 64
    .line 65
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-nez v5, :cond_1

    .line 70
    .line 71
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/BankStatus;->getBankStatusType()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    const-string v7, "2"

    .line 76
    .line 77
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_3

    .line 82
    .line 83
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/BankStatus;->getGrayscaleFlag()Ljava/lang/Boolean;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_3

    .line 94
    .line 95
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/BankStatus;->getWarningText()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v4, v5}, Lteam/opay/pay/wallet/transferhistory/TransferHistory;->setBankTips(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/BankStatus;->getBankStatusType()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_2

    .line 111
    .line 112
    const-string v2, "remind"

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    const-string v2, "blocking_release"

    .line 116
    .line 117
    :goto_0
    invoke-virtual {v4, v2}, Lteam/opay/pay/wallet/transferhistory/TransferHistory;->setRemindType(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 121
    .line 122
    const-string v2, "data"

    .line 123
    .line 124
    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 125
    .line 126
    .line 127
    const-string v2, "key_is_new_user"

    .line 128
    .line 129
    iget-boolean v4, v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->c:Z

    .line 130
    .line 131
    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    .line 133
    .line 134
    const-string v2, "fromPaste"

    .line 135
    .line 136
    iget-boolean v4, v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->g:Z

    .line 137
    .line 138
    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    .line 140
    .line 141
    const-string v2, "key_jump_check"

    .line 142
    .line 143
    iget-boolean v4, v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->h:Z

    .line 144
    .line 145
    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    .line 147
    .line 148
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v2}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->l0()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    if-eqz v2, :cond_4

    .line 157
    .line 158
    const-string v4, "key_bank_transfer_amount"

    .line 159
    .line 160
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    .line 162
    .line 163
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v2}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->m0()Ljava/lang/Float;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    if-eqz v2, :cond_5

    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    const-string v4, "key_bank_transfer_credit_ratio"

    .line 178
    .line 179
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 180
    .line 181
    .line 182
    :cond_5
    const-string v2, "key_busniess_scene_source"

    .line 183
    .line 184
    const-string v4, "AC_Home_Popup"

    .line 185
    .line 186
    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    .line 188
    .line 189
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {v2}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->o0()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    if-eqz v2, :cond_6

    .line 198
    .line 199
    const-string v4, "key_bank_transfer_from"

    .line 200
    .line 201
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    .line 203
    .line 204
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    const/4 v4, 0x0

    .line 209
    invoke-virtual {v2, v4}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->Y0(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {v2, v4}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->Z0(Ljava/lang/Float;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 220
    .line 221
    .line 222
    return-void
.end method

.method public final E(Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLkotlin/jvm/functions/Function0;)V
    .locals 13
    .param p1    # Lteam/opay/pay/api/BankStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/api/BankStatus;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v10, p0

    .line 2
    const-string v0, "bankStatus"

    .line 3
    .line 4
    move-object v3, p1

    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p8, :cond_2

    .line 9
    .line 10
    if-eqz p7, :cond_0

    .line 11
    .line 12
    sget-object v4, Lteam/opay/pay/util/OpayLoadingWindow;->m:Lteam/opay/pay/util/OpayLoadingWindow$Companion;

    .line 13
    .line 14
    iget-object v5, v10, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    .line 15
    .line 16
    const/4 v8, 0x3

    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    invoke-static/range {v4 .. v9}, Lteam/opay/pay/util/OpayLoadingWindow$Companion;->g(Lteam/opay/pay/util/OpayLoadingWindow$Companion;Landroidx/fragment/app/Fragment;ZZILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1}, Lteam/opay/pay/api/BankStatus;->getBankCode()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    const-string v0, ""

    .line 30
    .line 31
    :cond_1
    move-object v11, v0

    .line 32
    new-instance v12, Lmqa;

    .line 33
    .line 34
    move-object v0, v12

    .line 35
    move-object v1, p0

    .line 36
    move-object/from16 v2, p10

    .line 37
    .line 38
    move-object v3, p1

    .line 39
    move-object/from16 v4, p3

    .line 40
    .line 41
    move-object/from16 v5, p4

    .line 42
    .line 43
    move-object v6, p2

    .line 44
    move/from16 v7, p5

    .line 45
    .line 46
    move/from16 v8, p6

    .line 47
    .line 48
    move/from16 v9, p9

    .line 49
    .line 50
    invoke-direct/range {v0 .. v9}, Lmqa;-><init>(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lkotlin/jvm/functions/Function0;Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v11, v12}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->o(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/16 v8, 0x40

    .line 58
    .line 59
    const/4 v9, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    move-object v0, p0

    .line 62
    move-object v1, p1

    .line 63
    move-object v2, p2

    .line 64
    move-object/from16 v3, p3

    .line 65
    .line 66
    move-object/from16 v4, p4

    .line 67
    .line 68
    move/from16 v5, p5

    .line 69
    .line 70
    move/from16 v6, p6

    .line 71
    .line 72
    invoke-static/range {v0 .. v9}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->g0(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    if-eqz p10, :cond_3

    .line 76
    .line 77
    invoke-interface/range {p10 .. p10}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_3
    :goto_0
    return-void
.end method

.method public final F(Lteam/opay/pay/api/BankStatus;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;ZZ)V
    .locals 14

    .line 1
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;->getBankUserInfo()Lteam/opay/pay/api/BankUserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/api/BankUserInfo;->getBankAccountName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;->getBankAccountNumber()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual/range {p2 .. p2}, Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;->getBankIcon()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    const/16 v12, 0x360

    .line 18
    .line 19
    const/4 v13, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v10, 0x0

    .line 23
    const/4 v11, 0x0

    .line 24
    move-object v1, p0

    .line 25
    move-object v2, p1

    .line 26
    move/from16 v6, p3

    .line 27
    .line 28
    move/from16 v9, p4

    .line 29
    .line 30
    invoke-static/range {v1 .. v13}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->G(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final K(Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/Boolean;Ljava/lang/String;)V
    .locals 14
    .param p1    # Lteam/opay/pay/api/BankStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v13, p0

    .line 2
    const-string v0, "bankStatus"

    .line 3
    .line 4
    move-object v1, p1

    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    move/from16 v0, p6

    .line 9
    .line 10
    iput-boolean v0, v13, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->g:Z

    .line 11
    .line 12
    move/from16 v0, p7

    .line 13
    .line 14
    iput-boolean v0, v13, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->h:Z

    .line 15
    .line 16
    move-object/from16 v0, p8

    .line 17
    .line 18
    iput-object v0, v13, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->i:Ljava/lang/Boolean;

    .line 19
    .line 20
    move-object/from16 v0, p9

    .line 21
    .line 22
    iput-object v0, v13, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->j:Ljava/lang/String;

    .line 23
    .line 24
    const/16 v11, 0x3e0

    .line 25
    .line 26
    const/4 v12, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v8, 0x0

    .line 30
    const/4 v9, 0x0

    .line 31
    const/4 v10, 0x0

    .line 32
    move-object v0, p0

    .line 33
    move-object/from16 v2, p2

    .line 34
    .line 35
    move-object/from16 v3, p3

    .line 36
    .line 37
    move-object/from16 v4, p4

    .line 38
    .line 39
    move/from16 v5, p5

    .line 40
    .line 41
    invoke-static/range {v0 .. v12}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->G(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final L(Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Z)V
    .locals 6

    .line 1
    sget-object v0, Lteam/opay/pay/util/OpayLoadingWindow;->m:Lteam/opay/pay/util/OpayLoadingWindow$Companion;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    const/4 v4, 0x3

    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static/range {v0 .. v5}, Lteam/opay/pay/util/OpayLoadingWindow$Companion;->g(Lteam/opay/pay/util/OpayLoadingWindow$Companion;Landroidx/fragment/app/Fragment;ZZILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;->getBankAccountNumber()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "getViewLifecycleOwner(...)"

    .line 27
    .line 28
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v3, Llqa;

    .line 32
    .line 33
    invoke-direct {v3, p0, p1, p2}, Llqa;-><init>(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, v2, v3}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->P0(Ljava/lang/String;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final N(Lteam/opay/pay/transfer/contact/bean/TransferContactData;Ljava/lang/String;)V
    .locals 7
    .param p1    # Lteam/opay/pay/transfer/contact/bean/TransferContactData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "busniessSceneSource"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ld00;->a:Ld00;

    .line 7
    .line 8
    invoke-virtual {v0}, Ld00;->e()Landroid/app/Activity;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {v0}, Lli2;->e(Landroid/app/Activity;)Lkotlin/Unit;

    .line 15
    .line 16
    .line 17
    :cond_0
    sget-object v1, Lteam/opay/pay/util/OpayLoadingWindow;->m:Lteam/opay/pay/util/OpayLoadingWindow$Companion;

    .line 18
    .line 19
    iget-object v2, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    .line 20
    .line 21
    const/4 v5, 0x3

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-static/range {v1 .. v6}, Lteam/opay/pay/util/OpayLoadingWindow$Companion;->g(Lteam/opay/pay/util/OpayLoadingWindow$Companion;Landroidx/fragment/app/Fragment;ZZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x0

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankCode()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v2, v1

    .line 41
    :goto_0
    const-string v3, ""

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    move-object v2, v3

    .line 46
    :cond_2
    if-eqz p1, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankAccountNo()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :cond_3
    if-nez v1, :cond_4

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    move-object v3, v1

    .line 56
    :goto_1
    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v2, v3, v1}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->a0(Ljava/lang/String;Ljava/lang/String;Z)Landroidx/lifecycle/LiveData;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v2, "getViewLifecycleOwner(...)"

    .line 68
    .line 69
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance v2, Ljqa;

    .line 73
    .line 74
    invoke-direct {v2, p0, p1, p2}, Ljqa;-><init>(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/transfer/contact/bean/TransferContactData;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v1, v2}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 33
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    const-string v3, "name"

    .line 8
    .line 9
    move-object/from16 v5, p1

    .line 10
    .line 11
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v3, "phone"

    .line 15
    .line 16
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v3, "photoUrl"

    .line 20
    .line 21
    move-object/from16 v8, p3

    .line 22
    .line 23
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v3, "fromService"

    .line 27
    .line 28
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v3, "ACInputAssociationToAA"

    .line 32
    .line 33
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v18

    .line 37
    xor-int/lit8 v3, v18, 0x1

    .line 38
    .line 39
    new-instance v4, Lteam/opay/core/settings/SettingsStorage;

    .line 40
    .line 41
    iget-object v6, v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    .line 42
    .line 43
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    if-nez v6, :cond_0

    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    invoke-direct {v4, v6}, Lteam/opay/core/settings/SettingsStorage;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Lteam/opay/core/settings/SettingsStorage;->h()Lteam/opay/core/api/Country;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-static {v4, v1}, Lxob;->h(Lteam/opay/core/api/Country;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    iget-boolean v1, v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->g:Z

    .line 62
    .line 63
    iget-boolean v4, v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->h:Z

    .line 64
    .line 65
    xor-int/lit8 v7, v4, 0x1

    .line 66
    .line 67
    iget-object v15, v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->i:Ljava/lang/Boolean;

    .line 68
    .line 69
    iget-object v4, v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->d:Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;

    .line 70
    .line 71
    const/4 v9, 0x0

    .line 72
    if-eqz v4, :cond_1

    .line 73
    .line 74
    invoke-virtual {v4}, Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;->b()F

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    move-object/from16 v26, v4

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    move-object/from16 v26, v9

    .line 86
    .line 87
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v4}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->r0()Lteam/opay/pay/api/BankUserInfo;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    if-eqz v4, :cond_2

    .line 96
    .line 97
    invoke-virtual {v4}, Lteam/opay/pay/api/BankUserInfo;->getFirstTransferText()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    move-object/from16 v24, v4

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    move-object/from16 v24, v9

    .line 105
    .line 106
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v4}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->r0()Lteam/opay/pay/api/BankUserInfo;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    if-eqz v4, :cond_3

    .line 115
    .line 116
    invoke-virtual {v4}, Lteam/opay/pay/api/BankUserInfo;->getFirstTransferTextConfirmAmount()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    move-object/from16 v23, v4

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_3
    move-object/from16 v23, v9

    .line 124
    .line 125
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v4}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->r0()Lteam/opay/pay/api/BankUserInfo;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    if-eqz v4, :cond_4

    .line 134
    .line 135
    invoke-virtual {v4}, Lteam/opay/pay/api/BankUserInfo;->getFirstTransferTextConfirmName()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    move-object/from16 v22, v4

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_4
    move-object/from16 v22, v9

    .line 143
    .line 144
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v4}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->r0()Lteam/opay/pay/api/BankUserInfo;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    if-eqz v4, :cond_5

    .line 153
    .line 154
    invoke-virtual {v4}, Lteam/opay/pay/api/BankUserInfo;->getStampDutyInfo()Lteam/opay/core/api/graphql/StampDutyInfo;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    move-object/from16 v29, v4

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_5
    move-object/from16 v29, v9

    .line 162
    .line 163
    :goto_4
    new-instance v14, Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;

    .line 164
    .line 165
    move-object v4, v14

    .line 166
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 167
    .line 168
    .line 169
    move-result-object v20

    .line 170
    const v30, 0xc14ff0

    .line 171
    .line 172
    .line 173
    const/16 v31, 0x0

    .line 174
    .line 175
    const-string v7, "send_money"

    .line 176
    .line 177
    const/4 v9, 0x0

    .line 178
    const/4 v10, 0x0

    .line 179
    const/4 v11, 0x0

    .line 180
    const/4 v12, 0x0

    .line 181
    const/4 v13, 0x0

    .line 182
    const/16 v16, 0x0

    .line 183
    .line 184
    move-object/from16 v32, v14

    .line 185
    .line 186
    move-object/from16 v14, v16

    .line 187
    .line 188
    move-object/from16 v25, v15

    .line 189
    .line 190
    move-object/from16 v15, v16

    .line 191
    .line 192
    const/16 v19, 0x0

    .line 193
    .line 194
    const/16 v21, 0x0

    .line 195
    .line 196
    const/16 v27, 0x0

    .line 197
    .line 198
    const/16 v28, 0x0

    .line 199
    .line 200
    move-object/from16 v5, p1

    .line 201
    .line 202
    move-object/from16 v8, p3

    .line 203
    .line 204
    move/from16 v17, v1

    .line 205
    .line 206
    invoke-direct/range {v4 .. v31}, Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/String;Lteam/opay/core/api/graphql/StampDutyInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 207
    .line 208
    .line 209
    sget-object v1, Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment;->y:Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment$Companion;

    .line 210
    .line 211
    iget-boolean v4, v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->c:Z

    .line 212
    .line 213
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    move-object/from16 v5, v32

    .line 218
    .line 219
    invoke-virtual {v1, v5, v3, v2, v4}, Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment$Companion;->a(Lteam/opay/pay/transfer/contact/bean/ContactTransferDispatchData;ZLjava/lang/String;Ljava/lang/Boolean;)Lteam/opay/pay/transfer/contact/view/dialog/ContactTransferDispatchFragment;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    iget-object v2, v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    .line 224
    .line 225
    invoke-static {v2, v1}, Lteam/opay/pay/base/FragmentKt;->w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 226
    .line 227
    .line 228
    return-void
.end method

.method public final R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/api/BankUserInfo;ZZZLjava/lang/Boolean;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lteam/opay/pay/api/BankUserInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lteam/opay/pay/api/BankUserInfo;",
            "ZZZ",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v13, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    move-object/from16 v2, p2

    .line 5
    .line 6
    move-object/from16 v4, p4

    .line 7
    .line 8
    move/from16 v6, p6

    .line 9
    .line 10
    move-object/from16 v0, p10

    .line 11
    .line 12
    const-string v3, "bankCode"

    .line 13
    .line 14
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v3, "bankName"

    .line 18
    .line 19
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v3, "bankIcon"

    .line 23
    .line 24
    move-object/from16 v5, p3

    .line 25
    .line 26
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v3, "bankAccountNumber"

    .line 30
    .line 31
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v3, "bankUserInfo"

    .line 35
    .line 36
    move-object/from16 v7, p5

    .line 37
    .line 38
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, v13, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->j:Ljava/lang/String;

    .line 42
    .line 43
    move/from16 v3, p7

    .line 44
    .line 45
    iput-boolean v3, v13, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->g:Z

    .line 46
    .line 47
    move/from16 v3, p8

    .line 48
    .line 49
    iput-boolean v3, v13, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->h:Z

    .line 50
    .line 51
    move-object/from16 v3, p9

    .line 52
    .line 53
    iput-object v3, v13, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->i:Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual/range {p5 .. p5}, Lteam/opay/pay/api/BankUserInfo;->getOpayBankFlag()Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    const/4 v9, 0x0

    .line 66
    if-eqz v3, :cond_5

    .line 67
    .line 68
    invoke-virtual/range {p5 .. p5}, Lteam/opay/pay/api/BankUserInfo;->getOpayUserFlag()Ljava/lang/Boolean;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    const-string v1, "ACSelectOPay"

    .line 79
    .line 80
    if-eqz v0, :cond_0

    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    const/4 v3, 0x2

    .line 84
    const-string v5, "AC_Search_Result_Incomplete"

    .line 85
    .line 86
    invoke-static {v0, v5, v2, v3, v9}, Lkotlin/text/StringsKt;->X(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-nez v2, :cond_0

    .line 91
    .line 92
    iput-object v1, v13, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->j:Ljava/lang/String;

    .line 93
    .line 94
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lteam/opay/pay/api/BankUserInfo;->getAccountName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    const-string v3, ""

    .line 99
    .line 100
    if-nez v2, :cond_1

    .line 101
    .line 102
    move-object v2, v3

    .line 103
    :cond_1
    invoke-virtual/range {p5 .. p5}, Lteam/opay/pay/api/BankUserInfo;->getPhotoUrl()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    if-nez v5, :cond_2

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_2
    move-object v3, v5

    .line 111
    :goto_0
    if-nez v0, :cond_3

    .line 112
    .line 113
    move-object v0, v1

    .line 114
    :cond_3
    invoke-virtual {p0, v2, v4, v3, v0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_1

    .line 118
    .line 119
    :cond_4
    if-eqz p11, :cond_9

    .line 120
    .line 121
    invoke-interface/range {p11 .. p11}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    goto/16 :goto_1

    .line 125
    .line 126
    :cond_5
    invoke-virtual/range {p5 .. p5}, Lteam/opay/pay/api/BankUserInfo;->getOneSelfFlag()Ljava/lang/Boolean;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    const/4 v3, 0x1

    .line 135
    if-eqz v0, :cond_6

    .line 136
    .line 137
    invoke-virtual/range {p5 .. p5}, Lteam/opay/pay/api/BankUserInfo;->getQueryOWealthInterface()Ljava/lang/Boolean;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_6

    .line 146
    .line 147
    invoke-static {p0, v9, v3, v9}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->u(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/transfer/contact/bean/TransferContactData;ILjava/lang/Object;)Lteam/opay/pay/api/BankStatus;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v3, v2}, Lteam/opay/pay/api/BankStatus;->setBank(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, v1}, Lteam/opay/pay/api/BankStatus;->setBankCode(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual/range {p5 .. p5}, Lteam/opay/pay/api/BankUserInfo;->getBankAccountName()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    const/16 v11, 0x2c0

    .line 162
    .line 163
    const/4 v12, 0x0

    .line 164
    const/4 v7, 0x1

    .line 165
    const/4 v8, 0x0

    .line 166
    const/4 v9, 0x0

    .line 167
    const/4 v10, 0x1

    .line 168
    const/4 v14, 0x0

    .line 169
    move-object v0, p0

    .line 170
    move-object v1, v3

    .line 171
    move-object/from16 v3, p4

    .line 172
    .line 173
    move-object/from16 v4, p3

    .line 174
    .line 175
    move/from16 v5, p6

    .line 176
    .line 177
    move v6, v7

    .line 178
    move v7, v8

    .line 179
    move v8, v9

    .line 180
    move v9, v10

    .line 181
    move-object v10, v14

    .line 182
    invoke-static/range {v0 .. v12}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->G(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    goto/16 :goto_1

    .line 186
    .line 187
    :cond_6
    invoke-virtual/range {p5 .. p5}, Lteam/opay/pay/api/BankUserInfo;->getBankActivityPopUp()Ljava/lang/Boolean;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-eqz v0, :cond_7

    .line 196
    .line 197
    iget-object v0, v13, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->e:Lteam/opay/core/settings/NoClearStorage;

    .line 198
    .line 199
    invoke-virtual {v0, v4}, Lteam/opay/core/settings/NoClearStorage;->W(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-nez v0, :cond_7

    .line 204
    .line 205
    new-instance v8, Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;

    .line 206
    .line 207
    move-object v0, v8

    .line 208
    move-object/from16 v1, p1

    .line 209
    .line 210
    move-object/from16 v2, p2

    .line 211
    .line 212
    move-object/from16 v3, p3

    .line 213
    .line 214
    move-object/from16 v4, p4

    .line 215
    .line 216
    move-object/from16 v5, p5

    .line 217
    .line 218
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/api/BankUserInfo;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, v8, v6}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->L(Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Z)V

    .line 222
    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_7
    invoke-virtual/range {p5 .. p5}, Lteam/opay/pay/api/BankUserInfo;->getUserRoleAllowAAFlag()Ljava/lang/Boolean;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_8

    .line 234
    .line 235
    invoke-virtual/range {p5 .. p5}, Lteam/opay/pay/api/BankUserInfo;->getOpayUserFlag()Ljava/lang/Boolean;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_8

    .line 244
    .line 245
    new-instance v8, Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;

    .line 246
    .line 247
    move-object v0, v8

    .line 248
    move-object/from16 v1, p1

    .line 249
    .line 250
    move-object/from16 v2, p2

    .line 251
    .line 252
    move-object/from16 v3, p3

    .line 253
    .line 254
    move-object/from16 v4, p4

    .line 255
    .line 256
    move-object/from16 v5, p5

    .line 257
    .line 258
    invoke-direct/range {v0 .. v5}, Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lteam/opay/pay/api/BankUserInfo;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0, v8, v6}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->T(Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Z)V

    .line 262
    .line 263
    .line 264
    goto :goto_1

    .line 265
    :cond_8
    invoke-static {p0, v9, v3, v9}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->u(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/transfer/contact/bean/TransferContactData;ILjava/lang/Object;)Lteam/opay/pay/api/BankStatus;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-virtual {v3, v2}, Lteam/opay/pay/api/BankStatus;->setBank(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3, v1}, Lteam/opay/pay/api/BankStatus;->setBankCode(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual/range {p5 .. p5}, Lteam/opay/pay/api/BankUserInfo;->getBankAccountName()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    const/16 v11, 0x3e0

    .line 280
    .line 281
    const/4 v12, 0x0

    .line 282
    const/4 v7, 0x0

    .line 283
    const/4 v8, 0x0

    .line 284
    const/4 v9, 0x0

    .line 285
    const/4 v10, 0x0

    .line 286
    const/4 v14, 0x0

    .line 287
    move-object v0, p0

    .line 288
    move-object v1, v3

    .line 289
    move-object/from16 v3, p4

    .line 290
    .line 291
    move-object/from16 v4, p3

    .line 292
    .line 293
    move/from16 v5, p6

    .line 294
    .line 295
    move v6, v7

    .line 296
    move v7, v8

    .line 297
    move v8, v9

    .line 298
    move v9, v10

    .line 299
    move-object v10, v14

    .line 300
    invoke-static/range {v0 .. v12}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->G(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    :cond_9
    :goto_1
    return-void
.end method

.method public final T(Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Z)V
    .locals 2

    .line 1
    sget-object v0, Ld00;->a:Ld00;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld00;->e()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lli2;->e(Landroid/app/Activity;)Lkotlin/Unit;

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {p0, v1, v0, v1}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->u(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/transfer/contact/bean/TransferContactData;ILjava/lang/Object;)Lteam/opay/pay/api/BankStatus;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;->getBankCode()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lteam/opay/pay/api/BankStatus;->setBankCode(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;->getBankName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lteam/opay/pay/api/BankStatus;->setBank(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0, p1, p2}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->r(Lteam/opay/pay/api/BankStatus;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final U(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/bumptech/glide/a;->w(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestManager;->u(Ljava/lang/String;)Ljpc;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v1, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient$b;

    .line 17
    .line 18
    invoke-direct {v1, v0, p2, p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient$b;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljpc;->s0(Lnpc;)Ljpc;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->c()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljpc;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljpc;->R0()Lwm6;

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final V(Lteam/opay/pay/api/BankUserInfo;)V
    .locals 1
    .param p1    # Lteam/opay/pay/api/BankUserInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->b1(Lteam/opay/pay/api/BankUserInfo;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final W(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->j:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final X(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final Y(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->h:Z

    .line 2
    .line 3
    return-void
.end method

.method public final Z(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->i:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final a0(Lteam/opay/pay/api/BankStatus;Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->r0()Lteam/opay/pay/api/BankUserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lteam/opay/pay/api/BankUserInfo;->getBankPopUp()Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    const/4 v2, 0x1

    .line 25
    const-string v3, ""

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    sget-object v0, Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig;->Companion:Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig$Companion;

    .line 30
    .line 31
    if-nez p2, :cond_1

    .line 32
    .line 33
    move-object v4, v3

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move-object v4, p2

    .line 36
    :goto_1
    invoke-virtual {v0, v4}, Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig$Companion;->d(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    return v2

    .line 43
    :cond_2
    invoke-virtual {p1}, Lteam/opay/pay/api/BankStatus;->getBankCode()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    move-object v0, v3

    .line 50
    :cond_3
    invoke-virtual {p0, v0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->C(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_8

    .line 55
    .line 56
    sget-object v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->k:Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient$Companion;

    .line 57
    .line 58
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient$Companion;->a()Ljava/util/Map;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1}, Lteam/opay/pay/api/BankStatus;->getBankCode()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    if-nez v4, :cond_4

    .line 67
    .line 68
    move-object v4, v3

    .line 69
    :cond_4
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Ljava/lang/Integer;

    .line 74
    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    goto :goto_2

    .line 82
    :cond_5
    const/4 v0, 0x0

    .line 83
    :goto_2
    const/4 v4, -0x1

    .line 84
    if-eq v0, v4, :cond_8

    .line 85
    .line 86
    sget-object v0, Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig;->Companion:Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig$Companion;

    .line 87
    .line 88
    invoke-virtual {p1}, Lteam/opay/pay/api/BankStatus;->getAvgTime()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-eqz p1, :cond_6

    .line 93
    .line 94
    invoke-static {p1}, Lkotlin/text/StringsKt;->w(Ljava/lang/String;)Ljava/lang/Float;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-eqz p1, :cond_6

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    goto :goto_3

    .line 105
    :cond_6
    const/4 p1, 0x0

    .line 106
    :goto_3
    if-nez p2, :cond_7

    .line 107
    .line 108
    move-object p2, v3

    .line 109
    :cond_7
    invoke-virtual {v0, p1, p2}, Lteam/opay/pay/home/tabs/ac/BankAVGTimeConfig$Companion;->c(FLjava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_8

    .line 114
    .line 115
    const/4 v1, 0x1

    .line 116
    :cond_8
    return v1
.end method

.method public final b0(Lteam/opay/pay/api/BankStatus;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Z)V
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/pay/util/OpayLoadingWindow;->m:Lteam/opay/pay/util/OpayLoadingWindow$Companion;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/pay/util/OpayLoadingWindow$Companion;->a(Landroidx/fragment/app/Fragment;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lteam/opay/pay/home/tabs/ac/BankActivityPopUpDialog;->p:Lteam/opay/pay/home/tabs/ac/BankActivityPopUpDialog$Companion;

    .line 9
    .line 10
    invoke-virtual {p1}, Lteam/opay/pay/api/BankStatus;->getBank()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const-string v1, ""

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p2}, Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;->getBankAccountNumber()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/home/tabs/ac/BankActivityPopUpDialog$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/pay/home/tabs/ac/BankActivityPopUpDialog;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lhqa;

    .line 27
    .line 28
    invoke-direct {v1, p0, p2, p1, p3}, Lhqa;-><init>(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Lteam/opay/pay/api/BankStatus;Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lteam/opay/pay/home/tabs/ac/BankActivityPopUpDialog;->U(Lkotlin/jvm/functions/Function1;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    .line 35
    .line 36
    invoke-static {p1, v0}, Lteam/opay/pay/base/FragmentKt;->E(Landroidx/fragment/app/Fragment;Lteam/opay/core/base/BaseSheetFragmentV2;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final d0(Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/api/BankStatus;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/pay/home/tabs/ac/BankUnStableDialog;->s:Lteam/opay/pay/home/tabs/ac/BankUnStableDialog$Companion;

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    move-object p2, v2

    .line 10
    :cond_0
    if-nez p3, :cond_1

    .line 11
    .line 12
    move-object p3, v2

    .line 13
    :cond_1
    sget-object v3, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->k:Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient$Companion;

    .line 14
    .line 15
    invoke-virtual {v3}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient$Companion;->a()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {p1}, Lteam/opay/pay/api/BankStatus;->getBankCode()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Ljava/lang/Integer;

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 v4, 0x0

    .line 38
    :goto_0
    invoke-virtual {v1, p2, p3, v4, p4}, Lteam/opay/pay/home/tabs/ac/BankUnStableDialog$Companion;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lteam/opay/pay/home/tabs/ac/BankUnStableDialog;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p2, p5}, Lteam/opay/pay/home/tabs/ac/BankUnStableDialog;->l0(Lkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0, p2}, Lteam/opay/pay/base/FragmentKt;->w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient$Companion;->a()Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1}, Lteam/opay/pay/api/BankStatus;->getBankCode()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    if-nez p3, :cond_3

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    move-object v2, p3

    .line 60
    :goto_1
    invoke-virtual {v3}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient$Companion;->a()Ljava/util/Map;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-virtual {p1}, Lteam/opay/pay/api/BankStatus;->getBankCode()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p4

    .line 68
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    check-cast p3, Ljava/lang/Integer;

    .line 73
    .line 74
    if-eqz p3, :cond_4

    .line 75
    .line 76
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 81
    .line 82
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    invoke-interface {p2, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p2}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->q0()Landroidx/lifecycle/MutableLiveData;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p1}, Lteam/opay/pay/api/BankStatus;->getBankCode()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public final e0(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "content"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bank"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "callback"

    .line 12
    .line 13
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Lx7b;->a:Lx7b;

    .line 17
    .line 18
    invoke-static {v0, p2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v2, "frompage"

    .line 23
    .line 24
    iget-object v3, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x2

    .line 31
    new-array v3, v3, [Lkotlin/Pair;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    aput-object v0, v3, v4

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    aput-object v2, v3, v0

    .line 38
    .line 39
    const-string v0, "bank_exception_pop_page_show"

    .line 40
    .line 41
    invoke-virtual {v1, v0, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 42
    .line 43
    .line 44
    sget-object v0, Ld00;->a:Ld00;

    .line 45
    .line 46
    invoke-virtual {v0}, Ld00;->e()Landroid/app/Activity;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    invoke-static {v0}, Lli2;->e(Landroid/app/Activity;)Lkotlin/Unit;

    .line 53
    .line 54
    .line 55
    :cond_0
    sget-object v1, Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog;->l:Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog$Companion;

    .line 56
    .line 57
    sget v0, Lteam/opay/pay/R$string;->recipient_bank_un_stable:I

    .line 58
    .line 59
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iget-object v5, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->b:Ljava/lang/String;

    .line 64
    .line 65
    iget-boolean v6, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->c:Z

    .line 66
    .line 67
    move-object v3, p1

    .line 68
    move-object v4, p2

    .line 69
    invoke-virtual/range {v1 .. v6}, Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog$Companion;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1, p3}, Lteam/opay/pay/home/tabs/ac/BankUselessTipsDialog;->S(Lkotlin/jvm/functions/Function0;)V

    .line 74
    .line 75
    .line 76
    iget-object p2, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    .line 77
    .line 78
    invoke-static {p2, p1}, Lteam/opay/pay/base/FragmentKt;->w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final f0(Lteam/opay/pay/api/BankStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    .line 3
    .line 4
    new-instance v2, Landroid/content/Intent;

    .line 5
    .line 6
    iget-object v3, v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    .line 7
    .line 8
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-class v4, Lteam/opay/pay/home/tabs/ac/OpayBankTransferActivityV3;

    .line 16
    .line 17
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/BankStatus;->getBankCode()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v11

    .line 24
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/BankStatus;->getBank()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v10

    .line 28
    new-instance v3, Lteam/opay/pay/wallet/transferhistory/TransferHistory;

    .line 29
    .line 30
    const/16 v13, 0x41

    .line 31
    .line 32
    const/4 v14, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v12, 0x0

    .line 36
    move-object v5, v3

    .line 37
    move-object/from16 v8, p3

    .line 38
    .line 39
    move-object/from16 v9, p2

    .line 40
    .line 41
    invoke-direct/range {v5 .. v14}, Lteam/opay/pay/wallet/transferhistory/TransferHistory;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 42
    .line 43
    .line 44
    move-object/from16 v4, p4

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Lteam/opay/pay/wallet/transferhistory/TransferHistory;->setIcon(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v4}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->r0()Lteam/opay/pay/api/BankUserInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    const/4 v5, 0x0

    .line 58
    if-eqz v4, :cond_1

    .line 59
    .line 60
    invoke-virtual {v4}, Lteam/opay/pay/api/BankUserInfo;->getFirstTransferText()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move-object v4, v5

    .line 66
    :goto_0
    invoke-virtual {v3, v4}, Lteam/opay/pay/wallet/transferhistory/TransferHistory;->setFirstTransferText(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v4}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->r0()Lteam/opay/pay/api/BankUserInfo;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    invoke-virtual {v4}, Lteam/opay/pay/api/BankUserInfo;->getFirstTransferTextConfirmAmount()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    move-object v4, v5

    .line 85
    :goto_1
    invoke-virtual {v3, v4}, Lteam/opay/pay/wallet/transferhistory/TransferHistory;->setFirstTransferTextConfirmAmount(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v4}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->r0()Lteam/opay/pay/api/BankUserInfo;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    if-eqz v4, :cond_3

    .line 97
    .line 98
    invoke-virtual {v4}, Lteam/opay/pay/api/BankUserInfo;->getFirstTransferTextConfirmName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    goto :goto_2

    .line 103
    :cond_3
    move-object v4, v5

    .line 104
    :goto_2
    invoke-virtual {v3, v4}, Lteam/opay/pay/wallet/transferhistory/TransferHistory;->setFirstTransferTextConfirmName(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v4, v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->i:Ljava/lang/Boolean;

    .line 108
    .line 109
    invoke-virtual {v3, v4}, Lteam/opay/pay/wallet/transferhistory/TransferHistory;->setTimeChecked(Ljava/lang/Boolean;)V

    .line 110
    .line 111
    .line 112
    iget-object v4, v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->d:Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;

    .line 113
    .line 114
    if-eqz v4, :cond_4

    .line 115
    .line 116
    invoke-virtual {v4}, Lteam/opay/pay/transfer/contact/view/TransferConfigChecker;->b()F

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    goto :goto_3

    .line 125
    :cond_4
    move-object v4, v5

    .line 126
    :goto_3
    invoke-virtual {v3, v4}, Lteam/opay/pay/wallet/transferhistory/TransferHistory;->setTimeValue(Ljava/lang/Float;)V

    .line 127
    .line 128
    .line 129
    move/from16 v4, p6

    .line 130
    .line 131
    invoke-virtual {v3, v4}, Lteam/opay/pay/wallet/transferhistory/TransferHistory;->setJumpCheckWhenFirstShown(Z)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v4}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->r0()Lteam/opay/pay/api/BankUserInfo;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    if-eqz v4, :cond_5

    .line 143
    .line 144
    invoke-virtual {v4}, Lteam/opay/pay/api/BankUserInfo;->getRemainingTransferAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    goto :goto_4

    .line 149
    :cond_5
    move-object v4, v5

    .line 150
    :goto_4
    invoke-virtual {v3, v4}, Lteam/opay/pay/wallet/transferhistory/TransferHistory;->setRemainingTransferAmount(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {v4}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->r0()Lteam/opay/pay/api/BankUserInfo;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    if-eqz v4, :cond_6

    .line 162
    .line 163
    invoke-virtual {v4}, Lteam/opay/pay/api/BankUserInfo;->getErrorFirstName()Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    goto :goto_5

    .line 168
    :cond_6
    move-object v4, v5

    .line 169
    :goto_5
    invoke-virtual {v3, v4}, Lteam/opay/pay/wallet/transferhistory/TransferHistory;->setErrorNames(Ljava/util/List;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-virtual {v4}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->r0()Lteam/opay/pay/api/BankUserInfo;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    if-eqz v4, :cond_7

    .line 181
    .line 182
    invoke-virtual {v4}, Lteam/opay/pay/api/BankUserInfo;->getSuccessText()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    goto :goto_6

    .line 187
    :cond_7
    move-object v4, v5

    .line 188
    :goto_6
    invoke-virtual {v3, v4}, Lteam/opay/pay/wallet/transferhistory/TransferHistory;->setErrorNamesDialogContent(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-virtual {v4}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->r0()Lteam/opay/pay/api/BankUserInfo;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    if-eqz v4, :cond_8

    .line 200
    .line 201
    invoke-virtual {v4}, Lteam/opay/pay/api/BankUserInfo;->getErrorText()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    goto :goto_7

    .line 206
    :cond_8
    move-object v4, v5

    .line 207
    :goto_7
    invoke-virtual {v3, v4}, Lteam/opay/pay/wallet/transferhistory/TransferHistory;->setErrorNamesDialogCheckErrorTips(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-virtual {v4}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->r0()Lteam/opay/pay/api/BankUserInfo;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    if-eqz v4, :cond_9

    .line 219
    .line 220
    invoke-virtual {v4}, Lteam/opay/pay/api/BankUserInfo;->getStampDutyInfo()Lteam/opay/core/api/graphql/StampDutyInfo;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    goto :goto_8

    .line 225
    :cond_9
    move-object v4, v5

    .line 226
    :goto_8
    invoke-virtual {v3, v4}, Lteam/opay/pay/wallet/transferhistory/TransferHistory;->setStampDutyInfo(Lteam/opay/core/api/graphql/StampDutyInfo;)V

    .line 227
    .line 228
    .line 229
    move/from16 v4, p7

    .line 230
    .line 231
    invoke-virtual {v3, v4}, Lteam/opay/pay/wallet/transferhistory/TransferHistory;->setShouldCheckOwealch(Z)V

    .line 232
    .line 233
    .line 234
    if-eqz p5, :cond_c

    .line 235
    .line 236
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/BankStatus;->getBankStatusType()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    const-string v6, "1"

    .line 241
    .line 242
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    if-nez v4, :cond_a

    .line 247
    .line 248
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/BankStatus;->getBankStatusType()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    const-string v7, "2"

    .line 253
    .line 254
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    if-eqz v4, :cond_c

    .line 259
    .line 260
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/BankStatus;->getGrayscaleFlag()Ljava/lang/Boolean;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 265
    .line 266
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    if-eqz v4, :cond_c

    .line 271
    .line 272
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/BankStatus;->getWarningText()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    invoke-virtual {v3, v4}, Lteam/opay/pay/wallet/transferhistory/TransferHistory;->setBankTips(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/api/BankStatus;->getBankStatusType()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    if-eqz v4, :cond_b

    .line 288
    .line 289
    const-string v4, "remind"

    .line 290
    .line 291
    goto :goto_9

    .line 292
    :cond_b
    const-string v4, "blocking_release"

    .line 293
    .line 294
    :goto_9
    invoke-virtual {v3, v4}, Lteam/opay/pay/wallet/transferhistory/TransferHistory;->setRemindType(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    :cond_c
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 298
    .line 299
    const-string v4, "data"

    .line 300
    .line 301
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 302
    .line 303
    .line 304
    const-string v3, "key_is_new_user"

    .line 305
    .line 306
    iget-boolean v4, v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->c:Z

    .line 307
    .line 308
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 309
    .line 310
    .line 311
    const-string v3, "fromPaste"

    .line 312
    .line 313
    iget-boolean v4, v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->g:Z

    .line 314
    .line 315
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 316
    .line 317
    .line 318
    const-string v3, "key_jump_check"

    .line 319
    .line 320
    iget-boolean v4, v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->h:Z

    .line 321
    .line 322
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 323
    .line 324
    .line 325
    iget-object v3, v0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->j:Ljava/lang/String;

    .line 326
    .line 327
    if-eqz v3, :cond_d

    .line 328
    .line 329
    const-string v4, "key_busniess_scene_source"

    .line 330
    .line 331
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    .line 333
    .line 334
    :cond_d
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    invoke-virtual {v3}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->l0()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    if-eqz v3, :cond_e

    .line 343
    .line 344
    const-string v4, "key_bank_transfer_amount"

    .line 345
    .line 346
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    .line 348
    .line 349
    :cond_e
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 350
    .line 351
    .line 352
    move-result-object v3

    .line 353
    invoke-virtual {v3}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->m0()Ljava/lang/Float;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    if-eqz v3, :cond_f

    .line 358
    .line 359
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    const-string v4, "key_bank_transfer_credit_ratio"

    .line 364
    .line 365
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 366
    .line 367
    .line 368
    :cond_f
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    invoke-virtual {v3}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->o0()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    if-eqz v3, :cond_10

    .line 377
    .line 378
    const-string v4, "key_bank_transfer_from"

    .line 379
    .line 380
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    .line 382
    .line 383
    :cond_10
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    invoke-virtual {v3, v5}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->Y0(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    invoke-virtual {v3, v5}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->Z0(Ljava/lang/Float;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 398
    .line 399
    .line 400
    return-void
.end method

.method public final o(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lteam/opay/pay/api/BankStatus;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "code"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->c0(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "getViewLifecycleOwner(...)"

    .line 21
    .line 22
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Lkqa;

    .line 26
    .line 27
    invoke-direct {v2, p2, p0, p1}, Lkqa;-><init>(Lkotlin/jvm/functions/Function2;Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final r(Lteam/opay/pay/api/BankStatus;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Z)V
    .locals 10
    .param p1    # Lteam/opay/pay/api/BankStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bankStatus"

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
    sget-object v0, Ld00;->a:Ld00;

    .line 12
    .line 13
    invoke-virtual {v0}, Ld00;->e()Landroid/app/Activity;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {v0}, Lli2;->e(Landroid/app/Activity;)Lkotlin/Unit;

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p2}, Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;->getBankUserInfo()Lteam/opay/pay/api/BankUserInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lteam/opay/pay/api/BankUserInfo;->getRecipientAccount()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    const-string v0, ""

    .line 33
    .line 34
    :cond_1
    sget-object v1, Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher;->Companion:Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher$Companion;

    .line 35
    .line 36
    invoke-virtual {v1}, Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher$Companion;->a()Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_6

    .line 41
    .line 42
    invoke-virtual {v1}, Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher;->getOpen()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_2

    .line 47
    .line 48
    const/16 v8, 0x8

    .line 49
    .line 50
    const/4 v9, 0x0

    .line 51
    const/4 v7, 0x0

    .line 52
    move-object v3, p0

    .line 53
    move-object v4, p1

    .line 54
    move-object v5, p2

    .line 55
    move v6, p3

    .line 56
    invoke-static/range {v3 .. v9}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->H(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankStatus;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;ZZILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    iget-object v2, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->e:Lteam/opay/core/settings/NoClearStorage;

    .line 61
    .line 62
    invoke-virtual {v2}, Lteam/opay/core/settings/NoClearStorage;->l()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->v()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v4}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->K0()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_3

    .line 79
    .line 80
    iget-object v4, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->e:Lteam/opay/core/settings/NoClearStorage;

    .line 81
    .line 82
    invoke-virtual {v4, v0}, Lteam/opay/core/settings/NoClearStorage;->n(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    iget-object v4, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->e:Lteam/opay/core/settings/NoClearStorage;

    .line 88
    .line 89
    invoke-virtual {v4, v0}, Lteam/opay/core/settings/NoClearStorage;->k(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    :goto_0
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-nez v2, :cond_4

    .line 98
    .line 99
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->e:Lteam/opay/core/settings/NoClearStorage;

    .line 100
    .line 101
    invoke-virtual {v0, v3}, Lteam/opay/core/settings/NoClearStorage;->T0(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    iget-object v2, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->e:Lteam/opay/core/settings/NoClearStorage;

    .line 106
    .line 107
    invoke-virtual {v2}, Lteam/opay/core/settings/NoClearStorage;->m()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-virtual {v1}, Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher;->getTotalNum()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-ge v2, v3, :cond_5

    .line 116
    .line 117
    invoke-virtual {v1}, Lteam/opay/pay/home/tabs/ac/AcTransferToAaTransferSwitcher;->getUserNum()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-lt v0, v1, :cond_6

    .line 122
    .line 123
    :cond_5
    const/16 v7, 0x8

    .line 124
    .line 125
    const/4 v8, 0x0

    .line 126
    const/4 v6, 0x0

    .line 127
    move-object v2, p0

    .line 128
    move-object v3, p1

    .line 129
    move-object v4, p2

    .line 130
    move v5, p3

    .line 131
    invoke-static/range {v2 .. v8}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->H(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankStatus;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;ZZILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_6
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->x(Lteam/opay/pay/api/BankStatus;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Z)V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method public final s()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->b1(Lteam/opay/pay/api/BankUserInfo;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->v0()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final t(Lteam/opay/pay/transfer/contact/bean/TransferContactData;)Lteam/opay/pay/api/BankStatus;
    .locals 23
    .param p1    # Lteam/opay/pay/transfer/contact/bean/TransferContactData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->y0()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->A0()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->z0()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    new-instance v0, Lteam/opay/pay/api/BankStatus;

    .line 28
    .line 29
    const/16 v10, 0xb8

    .line 30
    .line 31
    const/4 v11, 0x0

    .line 32
    const-string v4, "0"

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v9, 0x0

    .line 38
    move-object v1, v0

    .line 39
    invoke-direct/range {v1 .. v11}, Lteam/opay/pay/api/BankStatus;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankCode()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v13

    .line 47
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getBankName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v14

    .line 51
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/transfer/contact/bean/TransferContactData;->getPhotoUrl()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v19

    .line 55
    new-instance v0, Lteam/opay/pay/api/BankStatus;

    .line 56
    .line 57
    const/16 v21, 0xb8

    .line 58
    .line 59
    const/16 v22, 0x0

    .line 60
    .line 61
    const-string v15, "0"

    .line 62
    .line 63
    const/16 v16, 0x0

    .line 64
    .line 65
    const/16 v17, 0x0

    .line 66
    .line 67
    const/16 v18, 0x0

    .line 68
    .line 69
    const/16 v20, 0x0

    .line 70
    .line 71
    move-object v12, v0

    .line 72
    invoke-direct/range {v12 .. v22}, Lteam/opay/pay/api/BankStatus;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0xb

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 9
    .line 10
    .line 11
    const/16 v1, 0xc

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 14
    .line 15
    .line 16
    const/16 v1, 0xd

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 19
    .line 20
    .line 21
    const/16 v1, 0xe

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method

.method public final w()Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x(Lteam/opay/pay/api/BankStatus;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Z)V
    .locals 10

    .line 1
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->K0()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-string v2, ""

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->e:Lteam/opay/core/settings/NoClearStorage;

    .line 19
    .line 20
    invoke-virtual {p2}, Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;->getBankUserInfo()Lteam/opay/pay/api/BankUserInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Lteam/opay/pay/api/BankUserInfo;->getRecipientAccount()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    move-object v3, v2

    .line 31
    :cond_0
    invoke-virtual {v0, v3}, Lteam/opay/core/settings/NoClearStorage;->c(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->e:Lteam/opay/core/settings/NoClearStorage;

    .line 36
    .line 37
    invoke-virtual {p2}, Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;->getBankUserInfo()Lteam/opay/pay/api/BankUserInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Lteam/opay/pay/api/BankUserInfo;->getRecipientAccount()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-nez v3, :cond_2

    .line 46
    .line 47
    move-object v3, v2

    .line 48
    :cond_2
    invoke-virtual {v0, v3}, Lteam/opay/core/settings/NoClearStorage;->b(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {p2}, Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;->getBankUserInfo()Lteam/opay/pay/api/BankUserInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v5}, Lteam/opay/pay/api/BankUserInfo;->getOpayAccountShowFlag()Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-virtual {v5}, Lteam/opay/pay/api/BankUserInfo;->getCashBackPictureUrl()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    move-object v7, v2

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    move-object v7, v0

    .line 76
    :goto_1
    new-instance v8, Lnqa;

    .line 77
    .line 78
    move-object v0, v8

    .line 79
    move-object v2, p0

    .line 80
    move-object v3, v5

    .line 81
    move-object v4, p2

    .line 82
    move-object v5, p1

    .line 83
    move v6, p3

    .line 84
    invoke-direct/range {v0 .. v6}, Lnqa;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankUserInfo;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Lteam/opay/pay/api/BankStatus;Z)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v7, v8}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->U(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    sget-object v0, Lteam/opay/pay/util/OpayLoadingWindow;->m:Lteam/opay/pay/util/OpayLoadingWindow$Companion;

    .line 92
    .line 93
    iget-object v1, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lteam/opay/pay/util/OpayLoadingWindow$Companion;->a(Landroidx/fragment/app/Fragment;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->a:Landroidx/fragment/app/Fragment;

    .line 99
    .line 100
    sget-object v4, Lteam/opay/pay/home/tabs/ac/GuideToOpayAccountTransferDialog;->u:Lteam/opay/pay/home/tabs/ac/GuideToOpayAccountTransferDialog$Companion;

    .line 101
    .line 102
    iget-boolean v8, p0, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->c:Z

    .line 103
    .line 104
    invoke-virtual {p0}, Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;->B()Lteam/opay/pay/home/tabs/BankTransferViewModel;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lteam/opay/pay/home/tabs/BankTransferViewModel;->K0()Z

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    const/4 v6, 0x0

    .line 113
    move-object v7, p2

    .line 114
    invoke-virtual/range {v4 .. v9}, Lteam/opay/pay/home/tabs/ac/GuideToOpayAccountTransferDialog$Companion;->a(Lteam/opay/pay/api/BankUserInfo;ILteam/opay/pay/home/tabs/ac/BankTransferInfoData;ZZ)Lteam/opay/pay/home/tabs/ac/GuideToOpayAccountTransferDialog;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    new-instance v2, Loqa;

    .line 119
    .line 120
    invoke-direct {v2, p0, p1, p2, p3}, Loqa;-><init>(Lteam/opay/pay/home/tabs/ac/OpayBankTransferAccountClient;Lteam/opay/pay/api/BankStatus;Lteam/opay/pay/home/tabs/ac/BankTransferInfoData;Z)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v2}, Lteam/opay/pay/home/tabs/ac/GuideToOpayAccountTransferDialog;->Y(Lkotlin/jvm/functions/Function0;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v0, v1}, Lteam/opay/pay/base/FragmentKt;->w(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/DialogFragment;)V

    .line 127
    .line 128
    .line 129
    :goto_2
    return-void
.end method
