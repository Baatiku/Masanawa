.class public final Lteam/opay/pay/android/views/AmountInputStatusManager;
.super Ljava/lang/Object;
.source "AmountInputStatusManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/android/views/AmountInputStatusManager$Builder;,
        Lteam/opay/pay/android/views/AmountInputStatusManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 f2\u00020\u0001:\u0002ghB\u008f\u0001\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000c\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\u000e2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\r\u0010\u001d\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u000e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010#\u001a\u00020\u000e2\u0008\u0010\"\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010\'\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020%H\u0007\u00a2\u0006\u0004\u0008\'\u0010(J\u000f\u0010)\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008)\u0010*J\u000f\u0010+\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008+\u0010\u001eJ%\u0010,\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008,\u0010-J\u0019\u0010.\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008.\u0010/J\u000f\u00100\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u00080\u00101J\u0017\u00104\u001a\u00020\u000e2\u0006\u00103\u001a\u000202H\u0002\u00a2\u0006\u0004\u00084\u00105J\u000f\u00106\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u00086\u0010\u001eJ\u000f\u00107\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u00087\u0010\u001eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u0010=R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010=R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR \u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010BR\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010ER\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010FR\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u0010;R\u0016\u0010\u0017\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00087\u0010;R\u001d\u0010K\u001a\u0004\u0018\u00010G8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008H\u0010I\u001a\u0004\u0008C\u0010JR\u0016\u0010N\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\u0018\u0010P\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010=R\u0016\u0010Q\u001a\u00020\u00068\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008#\u0010=R\u0014\u0010T\u001a\u00020R8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u0010SR\u0018\u0010W\u001a\u0004\u0018\u00010U8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010VR\u0014\u0010Z\u001a\u00020X8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010YR\u0016\u0010\\\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008[\u0010MR\u0016\u0010]\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u0010MR\u0016\u0010_\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008^\u0010MR\u001d\u0010b\u001a\u0004\u0018\u00010`8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010I\u001a\u0004\u0008L\u0010aR\u0018\u0010c\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010=R\u0016\u0010e\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008d\u0010A\u00a8\u0006i"
    }
    d2 = {
        "Lteam/opay/pay/android/views/AmountInputStatusManager;",
        "",
        "Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;",
        "inputText",
        "Landroid/widget/TextView;",
        "infoText",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "serviceMin",
        "serviceMax",
        "remainingTransferAmount",
        "",
        "serviceType",
        "Lkotlin/Function1;",
        "",
        "",
        "onAmountValidChange",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "Lteam/opay/core/api/graphql/StampDutyInfo;",
        "stampDutyInfo",
        "stampDutyInfoInfoTextView",
        "stampDutyInfoValueTextView",
        "<init>",
        "(Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;Landroid/widget/TextView;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/api/graphql/StampDutyInfo;Landroid/widget/TextView;Landroid/widget/TextView;)V",
        "amount",
        "r",
        "(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V",
        "g",
        "()V",
        "duty",
        "x",
        "(Lteam/opay/core/api/graphql/StampDutyInfo;)V",
        "text",
        "p",
        "(Ljava/lang/String;)V",
        "Lteam/opay/pay/kyc/event/KYCUpgradeEvent;",
        "event",
        "onKycUpgradeEvent",
        "(Lteam/opay/pay/kyc/event/KYCUpgradeEvent;)V",
        "s",
        "()Z",
        "w",
        "i",
        "(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;)Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "j",
        "(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "k",
        "()Ljava/lang/String;",
        "",
        "status",
        "u",
        "(I)V",
        "q",
        "l",
        "a",
        "Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;",
        "b",
        "Landroid/widget/TextView;",
        "c",
        "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
        "d",
        "e",
        "f",
        "Ljava/lang/String;",
        "Lkotlin/jvm/functions/Function1;",
        "h",
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/fragment/app/FragmentActivity;",
        "Lteam/opay/core/api/graphql/StampDutyInfo;",
        "Lteam/opay/pay/transfer/contact/sendmoney/TransferTipsSwitcher;",
        "m",
        "Lid8;",
        "()Lteam/opay/pay/transfer/contact/sendmoney/TransferTipsSwitcher;",
        "limitTipsSwitcher",
        "n",
        "Z",
        "shouldGuideKyc",
        "o",
        "maxAmount",
        "minAmount",
        "Lteam/opay/pay/home/tabs/MobileTransferViewModel;",
        "Lteam/opay/pay/home/tabs/MobileTransferViewModel;",
        "viewModel",
        "Lteam/opay/pay/kyc/levels/KycLevel;",
        "Lteam/opay/pay/kyc/levels/KycLevel;",
        "kycLevel",
        "Lag8;",
        "Lag8;",
        "viewLifecycleOwner",
        "t",
        "defaultReport",
        "redReport",
        "v",
        "greenReport",
        "Lteam/opay/pay/home/tabs/ac/StampDutyTipsDto;",
        "()Lteam/opay/pay/home/tabs/ac/StampDutyTipsDto;",
        "stampDutyTipsDto",
        "preAmount",
        "y",
        "preText",
        "z",
        "Builder",
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
.field public static final z:Lteam/opay/pay/android/views/AmountInputStatusManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final d:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final i:Landroidx/fragment/app/FragmentActivity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Lteam/opay/core/api/graphql/StampDutyInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final k:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final l:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final m:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Z

.field public o:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:Lteam/opay/core/api/GraphQL$CurrencyAmount;

.field public final q:Lteam/opay/pay/home/tabs/MobileTransferViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Lteam/opay/pay/kyc/levels/KycLevel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final s:Lag8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Z

.field public u:Z

.field public v:Z

.field public final w:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public x:Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public y:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/android/views/AmountInputStatusManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/android/views/AmountInputStatusManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/android/views/AmountInputStatusManager;->z:Lteam/opay/pay/android/views/AmountInputStatusManager$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;Landroid/widget/TextView;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/api/graphql/StampDutyInfo;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;",
            "Landroid/widget/TextView;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Lteam/opay/core/api/GraphQL$CurrencyAmount;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lteam/opay/core/api/graphql/StampDutyInfo;",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 4
    iput-object p2, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->b:Landroid/widget/TextView;

    .line 5
    iput-object p3, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->c:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 6
    iput-object p4, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->d:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 7
    iput-object p5, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->e:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 8
    iput-object p6, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->f:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->g:Lkotlin/jvm/functions/Function1;

    .line 10
    iput-object p8, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->h:Landroidx/fragment/app/Fragment;

    .line 11
    iput-object p9, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->i:Landroidx/fragment/app/FragmentActivity;

    .line 12
    iput-object p10, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->j:Lteam/opay/core/api/graphql/StampDutyInfo;

    .line 13
    iput-object p11, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->k:Landroid/widget/TextView;

    .line 14
    iput-object p12, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->l:Landroid/widget/TextView;

    .line 15
    new-instance p1, Lvr;

    invoke-direct {p1}, Lvr;-><init>()V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->m:Lid8;

    .line 16
    new-instance p1, Lwr;

    invoke-direct {p1}, Lwr;-><init>()V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object p1

    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->w:Lid8;

    .line 17
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputStatusManager;->w()V

    if-eqz p8, :cond_0

    .line 18
    invoke-virtual {p8}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    invoke-static {p9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    move-object p1, p9

    :cond_1
    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->s:Lag8;

    if-eqz p8, :cond_2

    goto :goto_0

    .line 19
    :cond_2
    invoke-static {p9}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    move-object p8, p9

    .line 20
    :goto_0
    new-instance p2, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p2, p8}, Landroidx/lifecycle/ViewModelProvider;-><init>(Lr0g;)V

    const-class p3, Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    invoke-virtual {p2, p3}, Landroidx/lifecycle/ViewModelProvider;->a(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p2

    check-cast p2, Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    iput-object p2, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->q:Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 21
    invoke-interface {p1}, Lag8;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance p2, Lteam/opay/pay/android/views/AmountInputStatusManager$a;

    invoke-direct {p2, p0}, Lteam/opay/pay/android/views/AmountInputStatusManager$a;-><init>(Lteam/opay/pay/android/views/AmountInputStatusManager;)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->a(Lzf8;)V

    if-eqz p11, :cond_3

    .line 22
    invoke-static {p11}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    :cond_3
    if-eqz p12, :cond_4

    .line 23
    invoke-static {p12}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 24
    :cond_4
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputStatusManager;->s()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p11, :cond_5

    .line 25
    new-instance p1, Lxr;

    invoke-direct {p1, p0}, Lxr;-><init>(Lteam/opay/pay/android/views/AmountInputStatusManager;)V

    invoke-static {p11, p1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 26
    :cond_5
    const-string p1, ""

    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->y:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;Landroid/widget/TextView;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/api/graphql/StampDutyInfo;Landroid/widget/TextView;Landroid/widget/TextView;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p12}, Lteam/opay/pay/android/views/AmountInputStatusManager;-><init>(Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;Landroid/widget/TextView;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/api/graphql/StampDutyInfo;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic a()Lteam/opay/pay/transfer/contact/sendmoney/TransferTipsSwitcher;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/android/views/AmountInputStatusManager;->o()Lteam/opay/pay/transfer/contact/sendmoney/TransferTipsSwitcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Lteam/opay/pay/home/tabs/ac/StampDutyTipsDto;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/android/views/AmountInputStatusManager;->t()Lteam/opay/pay/home/tabs/ac/StampDutyTipsDto;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c(Lteam/opay/pay/android/views/AmountInputStatusManager;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/android/views/AmountInputStatusManager;->f(Lteam/opay/pay/android/views/AmountInputStatusManager;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lteam/opay/pay/android/views/AmountInputStatusManager;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/android/views/AmountInputStatusManager;->m(Lteam/opay/pay/android/views/AmountInputStatusManager;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lteam/opay/pay/android/views/AmountInputStatusManager;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/android/views/AmountInputStatusManager;->v(Lteam/opay/pay/android/views/AmountInputStatusManager;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final f(Lteam/opay/pay/android/views/AmountInputStatusManager;)Lkotlin/Unit;
    .locals 4

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->f:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "service_type"

    .line 6
    .line 7
    invoke-static {v2, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [Lkotlin/Pair;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v1, v2, v3

    .line 16
    .line 17
    const-string v1, "transfer_enter_money_sd_click"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->h:Landroidx/fragment/app/Fragment;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->i:Landroidx/fragment/app/FragmentActivity;

    .line 33
    .line 34
    :cond_1
    if-eqz v0, :cond_4

    .line 35
    .line 36
    sget-object v1, Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog;->l:Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog$Companion;

    .line 37
    .line 38
    iget-object p0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->j:Lteam/opay/core/api/graphql/StampDutyInfo;

    .line 39
    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Lteam/opay/core/api/graphql/StampDutyInfo;->getStampDutyAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValueString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 p0, 0x0

    .line 54
    :goto_0
    if-nez p0, :cond_3

    .line 55
    .line 56
    const-string p0, ""

    .line 57
    .line 58
    :cond_3
    invoke-virtual {v1, p0}, Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog$Companion;->a(Ljava/lang/String;)Lteam/opay/pay/home/tabs/ac/StampDutyTipsDialog;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {v0, p0}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 63
    .line 64
    .line 65
    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 66
    .line 67
    return-object p0
.end method

.method public static final m(Lteam/opay/pay/android/views/AmountInputStatusManager;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->h()Lteam/opay/core/android/arch/Status;

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
    sget-object v2, Lteam/opay/core/android/arch/Status;->SUCCESS:Lteam/opay/core/android/arch/Status;

    .line 11
    .line 12
    if-ne v1, v2, :cond_2

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lteam/opay/pay/api/CashPageInfo;

    .line 21
    .line 22
    :cond_1
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Lteam/opay/core/android/arch/Resource;->b()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lteam/opay/pay/api/CashPageInfo;

    .line 29
    .line 30
    invoke-virtual {p1}, Lteam/opay/pay/api/CashPageInfo;->e()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->e:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 35
    .line 36
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputStatusManager;->w()V

    .line 37
    .line 38
    .line 39
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method

.method public static final o()Lteam/opay/pay/transfer/contact/sendmoney/TransferTipsSwitcher;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/transfer/contact/sendmoney/TransferTipsSwitcher;->Companion:Lteam/opay/pay/transfer/contact/sendmoney/TransferTipsSwitcher$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/transfer/contact/sendmoney/TransferTipsSwitcher$Companion;->a()Lteam/opay/pay/transfer/contact/sendmoney/TransferTipsSwitcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static final t()Lteam/opay/pay/home/tabs/ac/StampDutyTipsDto;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;->Companion:Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher$Companion;->a()Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lteam/opay/pay/home/tabs/ac/StampDutyConfigSwicher;->getTipsDto()Lteam/opay/pay/home/tabs/ac/StampDutyTipsDto;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method

.method public static final v(Lteam/opay/pay/android/views/AmountInputStatusManager;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputStatusManager;->q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final g()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->e:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 3
    .line 4
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputStatusManager;->w()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final h()Lteam/opay/pay/transfer/contact/sendmoney/TransferTipsSwitcher;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->m:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/transfer/contact/sendmoney/TransferTipsSwitcher;

    .line 8
    .line 9
    return-object v0
.end method

.method public final i(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;)Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 4
    .line 5
    sget-object v0, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "999999"

    .line 12
    .line 13
    invoke-direct {p1, v1, v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 17
    .line 18
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager;->A()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->compareTo(Lteam/opay/core/api/GraphQL$CurrencyAmount;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, -0x1

    .line 35
    if-ne v0, v1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object p2, p1

    .line 39
    :cond_2
    :goto_0
    return-object p2
.end method

.method public final j(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Lteam/opay/core/api/GraphQL$CurrencyAmount;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 4
    .line 5
    sget-object v0, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 6
    .line 7
    invoke-virtual {v0}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "100"

    .line 12
    .line 13
    invoke-direct {p1, v1, v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object p1
.end method

.method public final k()Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->o:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 4
    .line 5
    iget-object v3, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->p:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 6
    .line 7
    if-nez v3, :cond_0

    .line 8
    .line 9
    const-string v3, "minAmount"

    .line 10
    .line 11
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    :cond_0
    const-string v4, "substring(...)"

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->compareTo(Lteam/opay/core/api/GraphQL$CurrencyAmount;)I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    const/4 v6, -0x1

    .line 24
    if-ne v5, v6, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    sget v5, Lteam/opay/pay/R$string;->osdk_transfer_range:I

    .line 28
    .line 29
    sget-object v6, Lbd9;->a:Lbd9;

    .line 30
    .line 31
    invoke-virtual {v3}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    sget-object v7, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 36
    .line 37
    invoke-virtual {v6, v3, v7}, Lbd9;->k(Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/api/Country;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v6, v2, v7}, Lbd9;->k(Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/api/Country;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 v4, 0x2

    .line 64
    new-array v4, v4, [Ljava/lang/Object;

    .line 65
    .line 66
    aput-object v3, v4, v0

    .line 67
    .line 68
    aput-object v2, v4, v1

    .line 69
    .line 70
    invoke-static {v5, v4}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    :goto_0
    sget v2, Lteam/opay/pay/R$string;->osdk_transfer_range_agent:I

    .line 76
    .line 77
    sget-object v5, Lbd9;->a:Lbd9;

    .line 78
    .line 79
    invoke-virtual {v3}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    sget-object v6, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 84
    .line 85
    invoke-virtual {v5, v3, v6}, Lbd9;->k(Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/api/Country;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    new-array v1, v1, [Ljava/lang/Object;

    .line 97
    .line 98
    aput-object v3, v1, v0

    .line 99
    .line 100
    invoke-static {v2, v1}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :goto_1
    return-object v0
.end method

.method public final l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->q:Lteam/opay/pay/home/tabs/MobileTransferViewModel;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/core/api/GraphQL$ServiceType;->CASH_IN:Lteam/opay/core/api/GraphQL$ServiceType;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/pay/home/tabs/MobileTransferViewModel;->M(Lteam/opay/core/api/GraphQL$ServiceType;)Landroidx/lifecycle/LiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->s:Lag8;

    .line 10
    .line 11
    new-instance v2, Lur;

    .line 12
    .line 13
    invoke-direct {v2, p0}, Lur;-><init>(Lteam/opay/pay/android/views/AmountInputStatusManager;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lqna;->a(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final n()Lteam/opay/pay/home/tabs/ac/StampDutyTipsDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->w:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/home/tabs/ac/StampDutyTipsDto;

    .line 8
    .line 9
    return-object v0
.end method

.method public final onKycUpgradeEvent(Lteam/opay/pay/kyc/event/KYCUpgradeEvent;)V
    .locals 1
    .param p1    # Lteam/opay/pay/kyc/event/KYCUpgradeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lb8e;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lteam/opay/pay/kyc/event/KYCUpgradeEvent;->a()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-lez p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputStatusManager;->l()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-boolean v2, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->n:Z

    .line 4
    .line 5
    if-eqz v2, :cond_1

    .line 6
    .line 7
    const/4 p1, 0x3

    .line 8
    invoke-virtual {p0, p1}, Lteam/opay/pay/android/views/AmountInputStatusManager;->u(I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->g:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void

    .line 21
    :cond_1
    new-instance v2, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 22
    .line 23
    sget-object v3, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 24
    .line 25
    invoke-virtual {v3}, Lteam/opay/core/api/Country;->getCode()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-direct {v2, p1, v3}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->x:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    invoke-virtual {v3, v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->compareTo(Lteam/opay/core/api/GraphQL$CurrencyAmount;)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    iput-object v2, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->x:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 44
    .line 45
    iget-object v3, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->o:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 46
    .line 47
    if-nez v3, :cond_3

    .line 48
    .line 49
    :goto_0
    const/4 v3, 0x1

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->minus(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    sget-object v4, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 59
    .line 60
    invoke-virtual {v4}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v3, v4}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->compareTo(Lteam/opay/core/api/GraphQL$CurrencyAmount;)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-ltz v3, :cond_4

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    const/4 v3, 0x0

    .line 72
    :goto_1
    iget-object v4, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->p:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    if-nez v4, :cond_5

    .line 76
    .line 77
    const-string v4, "minAmount"

    .line 78
    .line 79
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    move-object v4, v5

    .line 83
    :cond_5
    invoke-virtual {v2, v4}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->minus(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    sget-object v6, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 88
    .line 89
    invoke-virtual {v6}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {v4, v6}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->compareTo(Lteam/opay/core/api/GraphQL$CurrencyAmount;)I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-ltz v4, :cond_6

    .line 98
    .line 99
    const/4 v4, 0x1

    .line 100
    goto :goto_2

    .line 101
    :cond_6
    const/4 v4, 0x0

    .line 102
    :goto_2
    if-eqz v4, :cond_7

    .line 103
    .line 104
    if-eqz v3, :cond_7

    .line 105
    .line 106
    const/4 v3, 0x1

    .line 107
    goto :goto_3

    .line 108
    :cond_7
    const/4 v3, 0x0

    .line 109
    :goto_3
    if-eqz p1, :cond_c

    .line 110
    .line 111
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_8

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_8
    if-eqz v3, :cond_9

    .line 119
    .line 120
    invoke-virtual {p0, v1}, Lteam/opay/pay/android/views/AmountInputStatusManager;->u(I)V

    .line 121
    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_9
    if-nez v4, :cond_a

    .line 125
    .line 126
    invoke-virtual {p0, v0}, Lteam/opay/pay/android/views/AmountInputStatusManager;->u(I)V

    .line 127
    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_a
    iget-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->o:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 131
    .line 132
    iget-object v4, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->e:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 133
    .line 134
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_b

    .line 139
    .line 140
    const/4 p1, 0x4

    .line 141
    invoke-virtual {p0, p1}, Lteam/opay/pay/android/views/AmountInputStatusManager;->u(I)V

    .line 142
    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_b
    const/4 p1, 0x2

    .line 146
    invoke-virtual {p0, p1}, Lteam/opay/pay/android/views/AmountInputStatusManager;->u(I)V

    .line 147
    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_c
    :goto_4
    const/4 p1, -0x1

    .line 151
    invoke-virtual {p0, p1}, Lteam/opay/pay/android/views/AmountInputStatusManager;->u(I)V

    .line 152
    .line 153
    .line 154
    :goto_5
    iget-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->g:Lkotlin/jvm/functions/Function1;

    .line 155
    .line 156
    if-eqz p1, :cond_d

    .line 157
    .line 158
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    :cond_d
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputStatusManager;->s()Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_11

    .line 170
    .line 171
    iget-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->j:Lteam/opay/core/api/graphql/StampDutyInfo;

    .line 172
    .line 173
    if-eqz p1, :cond_11

    .line 174
    .line 175
    invoke-virtual {p1, v2}, Lteam/opay/core/api/graphql/StampDutyInfo;->isOnStempDuty(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-ne p1, v0, :cond_11

    .line 180
    .line 181
    sget-object p1, Lx7b;->a:Lx7b;

    .line 182
    .line 183
    const-string v2, "service_type"

    .line 184
    .line 185
    iget-object v3, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->f:Ljava/lang/String;

    .line 186
    .line 187
    invoke-static {v2, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    new-array v3, v0, [Lkotlin/Pair;

    .line 192
    .line 193
    aput-object v2, v3, v1

    .line 194
    .line 195
    const-string v1, "transfer_enter_money_sd_show"

    .line 196
    .line 197
    invoke-virtual {p1, v1, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 198
    .line 199
    .line 200
    iget-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->k:Landroid/widget/TextView;

    .line 201
    .line 202
    if-eqz p1, :cond_f

    .line 203
    .line 204
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputStatusManager;->n()Lteam/opay/pay/home/tabs/ac/StampDutyTipsDto;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    if-eqz v1, :cond_e

    .line 212
    .line 213
    invoke-virtual {v1}, Lteam/opay/pay/home/tabs/ac/StampDutyTipsDto;->c()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    goto :goto_6

    .line 218
    :cond_e
    move-object v1, v5

    .line 219
    :goto_6
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    .line 221
    .line 222
    :cond_f
    iget-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->l:Landroid/widget/TextView;

    .line 223
    .line 224
    if-eqz p1, :cond_13

    .line 225
    .line 226
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 227
    .line 228
    .line 229
    iget-object v1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->j:Lteam/opay/core/api/graphql/StampDutyInfo;

    .line 230
    .line 231
    if-eqz v1, :cond_10

    .line 232
    .line 233
    invoke-virtual {v1}, Lteam/opay/core/api/graphql/StampDutyInfo;->getStampDutyAmount()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    if-eqz v1, :cond_10

    .line 238
    .line 239
    invoke-static {v1, v5, v0, v5}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->toText$default(Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    :cond_10
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    .line 245
    .line 246
    goto :goto_7

    .line 247
    :cond_11
    iget-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->k:Landroid/widget/TextView;

    .line 248
    .line 249
    if-eqz p1, :cond_12

    .line 250
    .line 251
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 252
    .line 253
    .line 254
    :cond_12
    iget-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->l:Landroid/widget/TextView;

    .line 255
    .line 256
    if-eqz p1, :cond_13

    .line 257
    .line 258
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 259
    .line 260
    .line 261
    :cond_13
    :goto_7
    return-void
.end method

.method public final q()V
    .locals 5

    .line 1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 2
    .line 3
    const-string v1, "service_type"

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->f:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1, v2}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [Lkotlin/Pair;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v1, v2, v3

    .line 16
    .line 17
    const-string v1, "enter_money_kyc_limits_click"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lcom/opay/team/OPayAnalytics;->b:Lcom/opay/team/OPayAnalytics$Companion;

    .line 23
    .line 24
    const-string v1, "ACTransfer"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/opay/team/OPayAnalytics$Companion;->a(Ljava/lang/String;)Lcom/opay/team/OPayAnalytics;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->r:Lteam/opay/pay/kyc/levels/KycLevel;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1}, Lteam/opay/pay/kyc/levels/KycLevel;->d()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v1, 0x0

    .line 42
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v4, "kyc"

    .line 48
    .line 49
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, "_single_limit_upgrade_click"

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    new-array v2, v3, [Lkotlin/Pair;

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/opay/team/OPayAnalytics;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->h:Landroidx/fragment/app/Fragment;

    .line 70
    .line 71
    const-class v1, Lteam/opay/pay/kyc/levels/KycLevelsActivity;

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    new-instance v2, Landroid/content/Intent;

    .line 79
    .line 80
    iget-object v3, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->h:Landroidx/fragment/app/Fragment;

    .line 81
    .line 82
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    if-nez v3, :cond_2

    .line 90
    .line 91
    return-void

    .line 92
    :cond_2
    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->i:Landroidx/fragment/app/FragmentActivity;

    .line 100
    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    new-instance v2, Landroid/content/Intent;

    .line 104
    .line 105
    iget-object v3, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->i:Landroidx/fragment/app/FragmentActivity;

    .line 106
    .line 107
    if-nez v3, :cond_4

    .line 108
    .line 109
    return-void

    .line 110
    :cond_4
    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 114
    .line 115
    .line 116
    :cond_5
    :goto_1
    return-void
.end method

.method public final r(Lteam/opay/core/api/GraphQL$CurrencyAmount;)V
    .locals 0
    .param p1    # Lteam/opay/core/api/GraphQL$CurrencyAmount;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->e:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputStatusManager;->w()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final s()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->j:Lteam/opay/core/api/graphql/StampDutyInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/StampDutyInfo;->getStampDutyFlag()Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->j:Lteam/opay/core/api/graphql/StampDutyInfo;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/StampDutyInfo;->getHitAB()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_1
    const-string v2, "A"

    .line 31
    .line 32
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputStatusManager;->n()Lteam/opay/pay/home/tabs/ac/StampDutyTipsDto;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    :cond_2
    return v1
.end method

.method public final u(I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x2

    .line 8
    iget-object v5, v0, Lteam/opay/pay/android/views/AmountInputStatusManager;->b:Landroid/widget/TextView;

    .line 9
    .line 10
    if-nez v5, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v5, -0x1

    .line 14
    const/4 v6, 0x3

    .line 15
    const/4 v7, 0x0

    .line 16
    if-eq v1, v5, :cond_1

    .line 17
    .line 18
    const-string v5, "color"

    .line 19
    .line 20
    const-string v8, "service_type"

    .line 21
    .line 22
    const-string v9, "enter_money_kyc_limits_show"

    .line 23
    .line 24
    if-eqz v1, :cond_d

    .line 25
    .line 26
    const-string v10, "minAmount"

    .line 27
    .line 28
    if-eq v1, v3, :cond_9

    .line 29
    .line 30
    if-eq v1, v4, :cond_7

    .line 31
    .line 32
    if-eq v1, v6, :cond_5

    .line 33
    .line 34
    const/4 v10, 0x4

    .line 35
    if-eq v1, v10, :cond_2

    .line 36
    .line 37
    :cond_1
    :goto_0
    move-object v11, v7

    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/android/views/AmountInputStatusManager;->h()Lteam/opay/pay/transfer/contact/sendmoney/TransferTipsSwitcher;

    .line 41
    .line 42
    .line 43
    move-result-object v10

    .line 44
    if-eqz v10, :cond_3

    .line 45
    .line 46
    invoke-virtual {v10}, Lteam/opay/pay/transfer/contact/sendmoney/TransferTipsSwitcher;->getDailyRemainLimitLackTips()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    move-object v10, v7

    .line 52
    :goto_1
    iget-boolean v11, v0, Lteam/opay/pay/android/views/AmountInputStatusManager;->u:Z

    .line 53
    .line 54
    if-nez v11, :cond_4

    .line 55
    .line 56
    sget-object v11, Lx7b;->a:Lx7b;

    .line 57
    .line 58
    iget-object v12, v0, Lteam/opay/pay/android/views/AmountInputStatusManager;->f:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v8, v12}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    const-string v12, "red"

    .line 65
    .line 66
    invoke-static {v5, v12}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    new-array v12, v4, [Lkotlin/Pair;

    .line 71
    .line 72
    aput-object v8, v12, v2

    .line 73
    .line 74
    aput-object v5, v12, v3

    .line 75
    .line 76
    invoke-virtual {v11, v9, v12}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 77
    .line 78
    .line 79
    iput-boolean v3, v0, Lteam/opay/pay/android/views/AmountInputStatusManager;->u:Z

    .line 80
    .line 81
    :cond_4
    :goto_2
    move-object v11, v10

    .line 82
    goto/16 :goto_4

    .line 83
    .line 84
    :cond_5
    iget-boolean v10, v0, Lteam/opay/pay/android/views/AmountInputStatusManager;->v:Z

    .line 85
    .line 86
    if-nez v10, :cond_6

    .line 87
    .line 88
    sget-object v10, Lx7b;->a:Lx7b;

    .line 89
    .line 90
    iget-object v11, v0, Lteam/opay/pay/android/views/AmountInputStatusManager;->f:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v8, v11}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    const-string v11, "green"

    .line 97
    .line 98
    invoke-static {v5, v11}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    new-array v11, v4, [Lkotlin/Pair;

    .line 103
    .line 104
    aput-object v8, v11, v2

    .line 105
    .line 106
    aput-object v5, v11, v3

    .line 107
    .line 108
    invoke-virtual {v10, v9, v11}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 109
    .line 110
    .line 111
    iput-boolean v3, v0, Lteam/opay/pay/android/views/AmountInputStatusManager;->v:Z

    .line 112
    .line 113
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/android/views/AmountInputStatusManager;->h()Lteam/opay/pay/transfer/contact/sendmoney/TransferTipsSwitcher;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    if-eqz v5, :cond_1

    .line 118
    .line 119
    invoke-virtual {v5}, Lteam/opay/pay/transfer/contact/sendmoney/TransferTipsSwitcher;->getKycUpgradeGuideTips()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    goto :goto_2

    .line 124
    :cond_7
    sget v5, Lteam/opay/pay/R$string;->transaction_limit:I

    .line 125
    .line 126
    sget-object v8, Lbd9;->a:Lbd9;

    .line 127
    .line 128
    iget-object v9, v0, Lteam/opay/pay/android/views/AmountInputStatusManager;->p:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 129
    .line 130
    if-nez v9, :cond_8

    .line 131
    .line 132
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    move-object v9, v7

    .line 136
    :cond_8
    invoke-virtual {v9}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    sget-object v10, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 141
    .line 142
    invoke-virtual {v8, v9, v10}, Lbd9;->k(Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/api/Country;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    iget-object v11, v0, Lteam/opay/pay/android/views/AmountInputStatusManager;->o:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 147
    .line 148
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v11}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 152
    .line 153
    .line 154
    move-result-object v11

    .line 155
    invoke-virtual {v8, v11, v10}, Lbd9;->k(Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/api/Country;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    new-array v10, v4, [Ljava/lang/Object;

    .line 160
    .line 161
    aput-object v9, v10, v2

    .line 162
    .line 163
    aput-object v8, v10, v3

    .line 164
    .line 165
    invoke-static {v5, v10}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    goto :goto_2

    .line 170
    :cond_9
    iget-object v5, v0, Lteam/opay/pay/android/views/AmountInputStatusManager;->o:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 171
    .line 172
    if-nez v5, :cond_b

    .line 173
    .line 174
    sget-object v5, Lbd9;->a:Lbd9;

    .line 175
    .line 176
    iget-object v8, v0, Lteam/opay/pay/android/views/AmountInputStatusManager;->p:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 177
    .line 178
    if-nez v8, :cond_a

    .line 179
    .line 180
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    move-object v8, v7

    .line 184
    :cond_a
    invoke-virtual {v8}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    sget-object v9, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 189
    .line 190
    invoke-virtual {v5, v8, v9}, Lbd9;->k(Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/api/Country;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    new-instance v8, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    const-string v9, "Amount must not be less than "

    .line 200
    .line 201
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    goto/16 :goto_2

    .line 212
    .line 213
    :cond_b
    sget v5, Lteam/opay/pay/R$string;->transaction_limit:I

    .line 214
    .line 215
    sget-object v8, Lbd9;->a:Lbd9;

    .line 216
    .line 217
    iget-object v9, v0, Lteam/opay/pay/android/views/AmountInputStatusManager;->p:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 218
    .line 219
    if-nez v9, :cond_c

    .line 220
    .line 221
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    move-object v9, v7

    .line 225
    :cond_c
    invoke-virtual {v9}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 226
    .line 227
    .line 228
    move-result-object v9

    .line 229
    sget-object v10, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 230
    .line 231
    invoke-virtual {v8, v9, v10}, Lbd9;->k(Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/api/Country;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v9

    .line 235
    iget-object v11, v0, Lteam/opay/pay/android/views/AmountInputStatusManager;->o:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 236
    .line 237
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v11}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 241
    .line 242
    .line 243
    move-result-object v11

    .line 244
    invoke-virtual {v8, v11, v10}, Lbd9;->k(Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/api/Country;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v8

    .line 248
    new-array v10, v4, [Ljava/lang/Object;

    .line 249
    .line 250
    aput-object v9, v10, v2

    .line 251
    .line 252
    aput-object v8, v10, v3

    .line 253
    .line 254
    invoke-static {v5, v10}, Ljmf;->l(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v10

    .line 258
    goto/16 :goto_2

    .line 259
    .line 260
    :cond_d
    iget-object v10, v0, Lteam/opay/pay/android/views/AmountInputStatusManager;->e:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 261
    .line 262
    if-eqz v10, :cond_1

    .line 263
    .line 264
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/android/views/AmountInputStatusManager;->h()Lteam/opay/pay/transfer/contact/sendmoney/TransferTipsSwitcher;

    .line 265
    .line 266
    .line 267
    move-result-object v10

    .line 268
    if-eqz v10, :cond_e

    .line 269
    .line 270
    invoke-virtual {v10}, Lteam/opay/pay/transfer/contact/sendmoney/TransferTipsSwitcher;->getDailyRemainLimitTips()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v10

    .line 274
    goto :goto_3

    .line 275
    :cond_e
    move-object v10, v7

    .line 276
    :goto_3
    if-eqz v10, :cond_1

    .line 277
    .line 278
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 279
    .line 280
    .line 281
    move-result v10

    .line 282
    if-nez v10, :cond_f

    .line 283
    .line 284
    goto/16 :goto_0

    .line 285
    .line 286
    :cond_f
    iget-boolean v10, v0, Lteam/opay/pay/android/views/AmountInputStatusManager;->t:Z

    .line 287
    .line 288
    if-nez v10, :cond_10

    .line 289
    .line 290
    sget-object v10, Lx7b;->a:Lx7b;

    .line 291
    .line 292
    iget-object v11, v0, Lteam/opay/pay/android/views/AmountInputStatusManager;->f:Ljava/lang/String;

    .line 293
    .line 294
    invoke-static {v8, v11}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 295
    .line 296
    .line 297
    move-result-object v8

    .line 298
    const-string v11, "default"

    .line 299
    .line 300
    invoke-static {v5, v11}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    new-array v11, v4, [Lkotlin/Pair;

    .line 305
    .line 306
    aput-object v8, v11, v2

    .line 307
    .line 308
    aput-object v5, v11, v3

    .line 309
    .line 310
    invoke-virtual {v10, v9, v11}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 311
    .line 312
    .line 313
    iput-boolean v3, v0, Lteam/opay/pay/android/views/AmountInputStatusManager;->t:Z

    .line 314
    .line 315
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/android/views/AmountInputStatusManager;->h()Lteam/opay/pay/transfer/contact/sendmoney/TransferTipsSwitcher;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    if-eqz v5, :cond_1

    .line 320
    .line 321
    invoke-virtual {v5}, Lteam/opay/pay/transfer/contact/sendmoney/TransferTipsSwitcher;->getDailyRemainLimitTips()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v10

    .line 325
    goto/16 :goto_2

    .line 326
    .line 327
    :goto_4
    if-eqz v11, :cond_12

    .line 328
    .line 329
    const-string v5, "%s"

    .line 330
    .line 331
    invoke-static {v11, v5, v2, v4, v7}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v4

    .line 335
    if-eqz v4, :cond_13

    .line 336
    .line 337
    sget-object v4, Lbd9;->a:Lbd9;

    .line 338
    .line 339
    iget-object v5, v0, Lteam/opay/pay/android/views/AmountInputStatusManager;->e:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 340
    .line 341
    if-nez v5, :cond_11

    .line 342
    .line 343
    sget-object v5, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 344
    .line 345
    invoke-virtual {v5}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    :cond_11
    invoke-virtual {v5}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->asMoneyAmount()Lteam/opay/core/android/money/MoneyAmount;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    sget-object v8, Lteam/opay/core/api/Country;->NIGERIA:Lteam/opay/core/api/Country;

    .line 354
    .line 355
    invoke-virtual {v4, v5, v8}, Lbd9;->k(Lteam/opay/core/android/money/MoneyAmount;Lteam/opay/core/api/Country;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v13

    .line 359
    const/4 v15, 0x4

    .line 360
    const/16 v16, 0x0

    .line 361
    .line 362
    const-string v12, "%s"

    .line 363
    .line 364
    const/4 v14, 0x0

    .line 365
    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v11

    .line 369
    goto :goto_5

    .line 370
    :cond_12
    move-object v11, v7

    .line 371
    :cond_13
    :goto_5
    iget-object v4, v0, Lteam/opay/pay/android/views/AmountInputStatusManager;->b:Landroid/widget/TextView;

    .line 372
    .line 373
    if-eqz v4, :cond_1a

    .line 374
    .line 375
    iget-object v5, v0, Lteam/opay/pay/android/views/AmountInputStatusManager;->y:Ljava/lang/String;

    .line 376
    .line 377
    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v5

    .line 381
    if-nez v5, :cond_15

    .line 382
    .line 383
    invoke-static {v11}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    .line 389
    .line 390
    if-nez v11, :cond_14

    .line 391
    .line 392
    const-string v5, ""

    .line 393
    .line 394
    goto :goto_6

    .line 395
    :cond_14
    move-object v5, v11

    .line 396
    :goto_6
    iput-object v5, v0, Lteam/opay/pay/android/views/AmountInputStatusManager;->y:Ljava/lang/String;

    .line 397
    .line 398
    :cond_15
    if-eqz v11, :cond_16

    .line 399
    .line 400
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    .line 401
    .line 402
    .line 403
    move-result v5

    .line 404
    if-nez v5, :cond_17

    .line 405
    .line 406
    :cond_16
    const/4 v2, 0x1

    .line 407
    :cond_17
    xor-int/2addr v2, v3

    .line 408
    invoke-static {v4, v2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 409
    .line 410
    .line 411
    if-ne v1, v6, :cond_18

    .line 412
    .line 413
    new-instance v2, Lyr;

    .line 414
    .line 415
    invoke-direct {v2, v0}, Lyr;-><init>(Lteam/opay/pay/android/views/AmountInputStatusManager;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    .line 420
    .line 421
    goto :goto_7

    .line 422
    :cond_18
    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    .line 424
    .line 425
    :goto_7
    if-eqz v1, :cond_19

    .line 426
    .line 427
    if-eq v1, v6, :cond_19

    .line 428
    .line 429
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    sget v2, Lteam/opay/pay/R$color;->osdk_color_DC0C48:I

    .line 434
    .line 435
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 440
    .line 441
    .line 442
    goto :goto_8

    .line 443
    :cond_19
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    sget v2, Lteam/opay/pay/R$color;->black_65:I

    .line 448
    .line 449
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 454
    .line 455
    .line 456
    :cond_1a
    :goto_8
    return-void
.end method

.method public final w()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->d:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->e:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lteam/opay/pay/android/views/AmountInputStatusManager;->i(Lteam/opay/core/api/GraphQL$CurrencyAmount;Lteam/opay/core/api/GraphQL$CurrencyAmount;)Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->o:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->c:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lteam/opay/pay/android/views/AmountInputStatusManager;->j(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->p:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 18
    .line 19
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->e:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->p:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    const-string v1, "minAmount"

    .line 31
    .line 32
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    :cond_0
    invoke-virtual {v0, v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->minus(Lteam/opay/core/api/GraphQL$CurrencyAmount;)Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget-object v1, Lteam/opay/core/api/GraphQL$CurrencyAmount;->Companion:Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;

    .line 41
    .line 42
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount$Companion;->a()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->compareTo(Lteam/opay/core/api/GraphQL$CurrencyAmount;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-gez v0, :cond_1

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x0

    .line 55
    :goto_0
    iput-boolean v0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->n:Z

    .line 56
    .line 57
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 58
    .line 59
    invoke-virtual {p0}, Lteam/opay/pay/android/views/AmountInputStatusManager;->k()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    sget-object v0, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 67
    .line 68
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lteam/opay/core/account/AccountInfoManager;->A()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iget-boolean v1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->n:Z

    .line 77
    .line 78
    if-eqz v1, :cond_2

    .line 79
    .line 80
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;->setMaxInputAmount(F)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    const v1, 0x4cbebc20    # 1.0E8f

    .line 88
    .line 89
    .line 90
    if-nez v0, :cond_4

    .line 91
    .line 92
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 93
    .line 94
    iget-object v2, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->o:Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 95
    .line 96
    if-eqz v2, :cond_3

    .line 97
    .line 98
    invoke-virtual {v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getValue()Ljava/lang/Float;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    if-eqz v2, :cond_3

    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    :cond_3
    invoke-virtual {v0, v1}, Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;->setMaxInputAmount(F)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;->setMaxInputAmount(F)V

    .line 115
    .line 116
    .line 117
    :goto_1
    iget-object v0, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 118
    .line 119
    invoke-virtual {v0}, Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;->getFormatText()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {p0, v0}, Lteam/opay/pay/android/views/AmountInputStatusManager;->p(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public final x(Lteam/opay/core/api/graphql/StampDutyInfo;)V
    .locals 1
    .param p1    # Lteam/opay/core/api/graphql/StampDutyInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->j:Lteam/opay/core/api/graphql/StampDutyInfo;

    .line 2
    .line 3
    iget-object p1, p0, Lteam/opay/pay/android/views/AmountInputStatusManager;->a:Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;

    .line 4
    .line 5
    invoke-virtual {p1}, Lteam/opay/pay/android/views/MaxValueKeyBoardEditText;->getFormatText()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lteam/opay/pay/android/views/AmountInputStatusManager;->p(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method
