.class public final Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "PaymentSuccessResultAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter$Companion;,
        Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lteam/opay/pay/cashier/result/MulitSpanItemEntry;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 Z2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001[B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\r\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001f\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u000eJ\u001f\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u000eJ\u001f\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u000eJ\u0017\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u000bJ\u0017\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u000bJ\u001f\u0010\u001e\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u000eJ\u0017\u0010!\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u001f\u0010#\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008#\u0010\u000eJ\u001f\u0010$\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008$\u0010\u000eJ!\u0010%\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008%\u0010\u000eJ\u0017\u0010\'\u001a\u00020\t2\u0006\u0010&\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\'\u0010\u000bJ\u0019\u0010)\u001a\u00020\t2\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010(\u00a2\u0006\u0004\u0008)\u0010*J!\u0010.\u001a\u00020\t2\u0008\u0008\u0002\u0010,\u001a\u00020+2\u0008\u0008\u0002\u0010-\u001a\u00020\u000f\u00a2\u0006\u0004\u0008.\u0010/R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0018\u00104\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103R0\u0010=\u001a\u0010\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u00020\t\u0018\u0001058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R0\u0010A\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\t\u0018\u0001058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008>\u00108\u001a\u0004\u0008?\u0010:\"\u0004\u0008@\u0010<R0\u0010F\u001a\u0010\u0012\u0004\u0012\u00020B\u0012\u0004\u0012\u00020\t\u0018\u0001058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008C\u00108\u001a\u0004\u0008D\u0010:\"\u0004\u0008E\u0010<R2\u0010K\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010G\u0012\u0004\u0012\u00020\t\u0018\u0001058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u00108\u001a\u0004\u0008I\u0010:\"\u0004\u0008J\u0010<R\u0014\u0010N\u001a\u00020\u000f8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\u0016\u0010Q\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u0016\u0010-\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010MR\u0018\u0010T\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008S\u00101R$\u0010Y\u001a\u0012\u0012\u0004\u0012\u00020\u00020Uj\u0008\u0012\u0004\u0012\u00020\u0002`V8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008W\u0010X\u00a8\u0006\\"
    }
    d2 = {
        "Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lteam/opay/pay/cashier/result/MulitSpanItemEntry;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        "Landroidx/fragment/app/Fragment;",
        "baseFragment",
        "<init>",
        "(Landroidx/fragment/app/Fragment;)V",
        "helper",
        "",
        "D",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;)V",
        "item",
        "y",
        "(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/MulitSpanItemEntry;)V",
        "",
        "value",
        "N",
        "(Ljava/lang/String;)V",
        "Lteam/opay/pay/cashier/result/PaymentResultShowContent;",
        "data",
        "O",
        "(Lteam/opay/pay/cashier/result/PaymentResultShowContent;)V",
        "t",
        "K",
        "mulitItem",
        "H",
        "G",
        "I",
        "itemData",
        "w",
        "Landroid/widget/TextView;",
        "tag",
        "P",
        "(Landroid/widget/TextView;)V",
        "v",
        "F",
        "M",
        "holder",
        "onViewAttachedToWindow",
        "Lteam/opay/pay/cashier/result/PaymentResponse;",
        "T",
        "(Lteam/opay/pay/cashier/result/PaymentResponse;)V",
        "",
        "saveBeneficiary",
        "categoryName",
        "V",
        "(ZLjava/lang/String;)V",
        "a",
        "Landroidx/fragment/app/Fragment;",
        "b",
        "Lteam/opay/pay/cashier/result/PaymentResponse;",
        "paymentData",
        "Lkotlin/Function1;",
        "Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;",
        "c",
        "Lkotlin/jvm/functions/Function1;",
        "getCallPhoneClickListener",
        "()Lkotlin/jvm/functions/Function1;",
        "R",
        "(Lkotlin/jvm/functions/Function1;)V",
        "callPhoneClickListener",
        "d",
        "getTipsClickedListener",
        "U",
        "tipsClickedListener",
        "Lteam/opay/pay/cashier/result/FunctionConf;",
        "e",
        "getFunctionConfClickedListener",
        "S",
        "functionConfClickedListener",
        "Lteam/opay/odialog/net/AdDataItem;",
        "f",
        "getAdClickedListener",
        "Q",
        "adClickedListener",
        "g",
        "Ljava/lang/String;",
        "SAVE_ACCOUNT_URL",
        "h",
        "Z",
        "isBeneficiarySaved",
        "i",
        "j",
        "marketingFragment",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "k",
        "Ljava/util/ArrayList;",
        "resultList",
        "l",
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
.field public static final l:Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lteam/opay/pay/cashier/result/PaymentResponse;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/cashier/result/FunctionConf;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/odialog/net/AdDataItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Z

.field public i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/cashier/result/MulitSpanItemEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->l:Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "baseFragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->a:Landroidx/fragment/app/Fragment;

    .line 11
    .line 12
    const-string p1, "otravel://beneficiary/save"

    .line 13
    .line 14
    iput-object p1, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->g:Ljava/lang/String;

    .line 15
    .line 16
    const-string p1, ""

    .line 17
    .line 18
    iput-object p1, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->i:Ljava/lang/String;

    .line 19
    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->k:Ljava/util/ArrayList;

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    sget v0, Lteam/opay/pay/R$layout;->item_payment_success_info:I

    .line 29
    .line 30
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x2

    .line 34
    sget v0, Lteam/opay/pay/R$layout;->item_transaction_bank_progress_child:I

    .line 35
    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x4

    .line 40
    sget v0, Lteam/opay/pay/R$layout;->item_payment_success_tips:I

    .line 41
    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x6

    .line 46
    sget v0, Lteam/opay/pay/R$layout;->item_payment_success_fun_btn_normal:I

    .line 47
    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 49
    .line 50
    .line 51
    const/16 p1, 0x9

    .line 52
    .line 53
    sget v0, Lteam/opay/pay/R$layout;->item_payment_success_functionconf_btn:I

    .line 54
    .line 55
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x7

    .line 59
    sget v0, Lteam/opay/pay/R$layout;->payment_success_ad_pic:I

    .line 60
    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 62
    .line 63
    .line 64
    const/16 p1, 0x8

    .line 65
    .line 66
    sget v0, Lteam/opay/pay/R$layout;->payment_success_marketing:I

    .line 67
    .line 68
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 69
    .line 70
    .line 71
    const/4 p1, 0x3

    .line 72
    sget v0, Lteam/opay/pay/R$layout;->item_payment_result_pendding_tips:I

    .line 73
    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 75
    .line 76
    .line 77
    const/4 p1, 0x5

    .line 78
    sget v0, Lteam/opay/pay/R$layout;->item_pay_result_info:I

    .line 79
    .line 80
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 81
    .line 82
    .line 83
    const/16 p1, 0xc

    .line 84
    .line 85
    sget v0, Lteam/opay/pay/R$layout;->item_payment_result_token:I

    .line 86
    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 88
    .line 89
    .line 90
    const/16 p1, 0xa

    .line 91
    .line 92
    sget v0, Lteam/opay/pay/R$layout;->item_payment_bonus_space_top:I

    .line 93
    .line 94
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 95
    .line 96
    .line 97
    const/16 p1, 0xb

    .line 98
    .line 99
    sget v0, Lteam/opay/pay/R$layout;->item_payment_bonus_space_bottom:I

    .line 100
    .line 101
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 102
    .line 103
    .line 104
    const/16 p1, 0xd

    .line 105
    .line 106
    sget v0, Lteam/opay/pay/R$layout;->item_pay_success_result_bonus:I

    .line 107
    .line 108
    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public static final A(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;Lteam/opay/pay/cashier/result/PaymentResultShowContent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->O(Lteam/opay/pay/cashier/result/PaymentResultShowContent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/PaymentResultShowContent;->c()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-string p1, ""

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->N(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method public static final B(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;Lteam/opay/pay/cashier/result/PaymentResultShowContent;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->O(Lteam/opay/pay/cashier/result/PaymentResultShowContent;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string v0, "mContext"

    .line 7
    .line 8
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/PaymentResultShowContent;->f()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const-string p1, ""

    .line 18
    .line 19
    :cond_0
    invoke-static {p0, p1}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method public static final C(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;Lteam/opay/pay/cashier/result/PaymentResultShowContent;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->O(Lteam/opay/pay/cashier/result/PaymentResultShowContent;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string v0, "mContext"

    .line 7
    .line 8
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/PaymentResultShowContent;->f()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const-string p1, ""

    .line 18
    .line 19
    :cond_0
    invoke-static {p0, p1}, Lkmf;->E(Landroid/content/Context;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method public static final E()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final J(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->c:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->b:Lteam/opay/pay/cashier/result/PaymentResponse;

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/PaymentResponse;->d()Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    nop

    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public static final L(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;Ljava/util/regex/Pattern;Ljava/lang/String;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "mContext"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    sget v2, Lteam/opay/pay/R$string;->payment_status_sheet_label_token:I

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "getString(...)"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string p2, "\n"

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string p2, "replaceAll(...)"

    .line 32
    .line 33
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1, p1}, Lteam/opay/core/android/ContextKt;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    sget p1, Lteam/opay/pay/R$string;->clipboard_copy:I

    .line 42
    .line 43
    invoke-static {p1}, Ljmf;->k(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p0, p1}, Lkmf;->J(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p0
.end method

.method public static synthetic W(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    const-string p2, ""

    .line 11
    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->V(ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic k(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;Lteam/opay/pay/cashier/result/PaymentResultShowContent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->A(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;Lteam/opay/pay/cashier/result/PaymentResultShowContent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lkotlin/jvm/internal/Ref$BooleanRef;Lteam/opay/pay/cashier/result/ResultActivityInfoAdapter;Ljava/util/List;Landroid/widget/TextView;Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->u(Lkotlin/jvm/internal/Ref$BooleanRef;Lteam/opay/pay/cashier/result/ResultActivityInfoAdapter;Ljava/util/List;Landroid/widget/TextView;Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->E()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic n(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->x(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;Ljava/lang/Object;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;Lteam/opay/pay/cashier/result/PaymentResultShowContent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->C(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;Lteam/opay/pay/cashier/result/PaymentResultShowContent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;Lteam/opay/pay/cashier/result/PaymentResultShowContent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->B(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;Lteam/opay/pay/cashier/result/PaymentResultShowContent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->J(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;Lteam/opay/pay/cashier/result/PaymentResultShowContent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->z(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;Lteam/opay/pay/cashier/result/PaymentResultShowContent;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;Ljava/util/regex/Pattern;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->L(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;Ljava/util/regex/Pattern;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final u(Lkotlin/jvm/internal/Ref$BooleanRef;Lteam/opay/pay/cashier/result/ResultActivityInfoAdapter;Ljava/util/List;Landroid/widget/TextView;Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;)Lkotlin/Unit;
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    iget-boolean v3, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 5
    .line 6
    xor-int/lit8 v4, v3, 0x1

    .line 7
    .line 8
    iput-boolean v4, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    sget p1, Lteam/opay/pay/R$string;->osdk_fold:I

    .line 16
    .line 17
    invoke-static {p1}, Ljmf;->k(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    sget p1, Lteam/opay/pay/R$mipmap;->osdk_ic_voucher_arrow_up:I

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p3, p1}, Lck3;->b(Landroid/widget/TextView;Ljava/lang/Integer;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-interface {p2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    sget p1, Lteam/opay/pay/R$string;->osdk_unfold:I

    .line 42
    .line 43
    invoke-static {p1}, Ljmf;->k(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    sget p1, Lteam/opay/pay/R$mipmap;->osdk_ic_voucher_arrow_down:I

    .line 51
    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p3, p1}, Lck3;->b(Landroid/widget/TextView;Ljava/lang/Integer;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    iget-object p1, p4, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->b:Lteam/opay/pay/cashier/result/PaymentResponse;

    .line 60
    .line 61
    const/4 p2, 0x0

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/PaymentResponse;->l()Lteam/opay/pay/cashier/result/OrderStatus;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    move-object p1, p2

    .line 70
    :goto_1
    sget-object p3, Lteam/opay/pay/cashier/result/OrderStatus;->PENDING:Lteam/opay/pay/cashier/result/OrderStatus;

    .line 71
    .line 72
    const-string v3, "inside"

    .line 73
    .line 74
    const-string v4, "page_type"

    .line 75
    .line 76
    const-string v5, "collapse"

    .line 77
    .line 78
    const-string v6, "expand"

    .line 79
    .line 80
    const-string v7, "button"

    .line 81
    .line 82
    if-ne p1, p3, :cond_3

    .line 83
    .line 84
    sget-object p1, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 85
    .line 86
    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 87
    .line 88
    if-eqz p0, :cond_2

    .line 89
    .line 90
    move-object v5, v6

    .line 91
    :cond_2
    invoke-static {v7, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    new-array p3, v0, [Lkotlin/Pair;

    .line 100
    .line 101
    aput-object p0, p3, v1

    .line 102
    .line 103
    aput-object p2, p3, v2

    .line 104
    .line 105
    const-string p0, "payment_pending_button_click"

    .line 106
    .line 107
    invoke-virtual {p1, p0, p3}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_3
    iget-object p1, p4, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->b:Lteam/opay/pay/cashier/result/PaymentResponse;

    .line 112
    .line 113
    if-eqz p1, :cond_4

    .line 114
    .line 115
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/PaymentResponse;->l()Lteam/opay/pay/cashier/result/OrderStatus;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    :cond_4
    sget-object p1, Lteam/opay/pay/cashier/result/OrderStatus;->SUCCESS:Lteam/opay/pay/cashier/result/OrderStatus;

    .line 120
    .line 121
    if-ne p2, p1, :cond_6

    .line 122
    .line 123
    sget-object p1, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 124
    .line 125
    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 126
    .line 127
    if-eqz p0, :cond_5

    .line 128
    .line 129
    move-object v5, v6

    .line 130
    :cond_5
    invoke-static {v7, v5}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    new-array p3, v0, [Lkotlin/Pair;

    .line 139
    .line 140
    aput-object p0, p3, v1

    .line 141
    .line 142
    aput-object p2, p3, v2

    .line 143
    .line 144
    const-string p0, "payment_succ_button_click"

    .line 145
    .line 146
    invoke-virtual {p1, p0, p3}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 147
    .line 148
    .line 149
    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 150
    .line 151
    return-object p0
.end method

.method public static final x(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->e:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static final z(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;Lteam/opay/pay/cashier/result/PaymentResultShowContent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->O(Lteam/opay/pay/cashier/result/PaymentResultShowContent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/PaymentResultShowContent;->c()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-string p1, ""

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->N(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method


# virtual methods
.method public final D(Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->b:Lteam/opay/pay/cashier/result/PaymentResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_16

    .line 4
    .line 5
    sget v1, Lteam/opay/pay/R$id;->success_lottie:I

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    .line 12
    .line 13
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/PaymentResponse;->l()Lteam/opay/pay/cashier/result/OrderStatus;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    const/4 v2, -0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v3, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter$a;->a:[I

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    aget v2, v3, v2

    .line 28
    .line 29
    :goto_0
    const-string v3, ""

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    if-eq v2, v4, :cond_7

    .line 33
    .line 34
    const/4 v5, 0x2

    .line 35
    if-eq v2, v5, :cond_4

    .line 36
    .line 37
    const/4 v5, 0x3

    .line 38
    if-eq v2, v5, :cond_1

    .line 39
    .line 40
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 41
    .line 42
    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    sget v1, Lteam/opay/pay/R$id;->iv_status:I

    .line 52
    .line 53
    sget v2, Lteam/opay/pay/R$mipmap;->ic_transaction_failed:I

    .line 54
    .line 55
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 56
    .line 57
    .line 58
    sget v1, Lteam/opay/pay/R$id;->tv_status:I

    .line 59
    .line 60
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/PaymentResponse;->p()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-nez v2, :cond_2

    .line 65
    .line 66
    move-object v2, v3

    .line 67
    :cond_2
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-nez v5, :cond_3

    .line 72
    .line 73
    sget v2, Lteam/opay/pay/R$string;->transaction_failed_header:I

    .line 74
    .line 75
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    :cond_3
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    sget v1, Lteam/opay/pay/R$id;->iv_status:I

    .line 90
    .line 91
    sget v2, Lteam/opay/pay/R$mipmap;->ic_pay_padding:I

    .line 92
    .line 93
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 94
    .line 95
    .line 96
    sget v1, Lteam/opay/pay/R$id;->tv_status:I

    .line 97
    .line 98
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/PaymentResponse;->p()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    if-nez v2, :cond_5

    .line 103
    .line 104
    move-object v2, v3

    .line 105
    :cond_5
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-nez v5, :cond_6

    .line 110
    .line 111
    sget v2, Lteam/opay/pay/R$string;->osdk_pay_result_pending:I

    .line 112
    .line 113
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    :cond_6
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_7
    sget v2, Lteam/opay/pay/R$id;->iv_status:I

    .line 122
    .line 123
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    const/4 v6, 0x4

    .line 128
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 135
    .line 136
    .line 137
    iget-object v5, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->a:Landroidx/fragment/app/Fragment;

    .line 138
    .line 139
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    const-string v6, "getViewLifecycleOwner(...)"

    .line 144
    .line 145
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    new-instance v6, Lfhb;

    .line 149
    .line 150
    invoke-direct {v6}, Lfhb;-><init>()V

    .line 151
    .line 152
    .line 153
    const-wide/16 v7, 0x9c4

    .line 154
    .line 155
    invoke-static {v1, v5, v7, v8, v6}, Lteam/opay/core/android/ViewKt;->j(Lcom/airbnb/lottie/LottieAnimationView;Lag8;JLkotlin/jvm/functions/Function0;)V

    .line 156
    .line 157
    .line 158
    sget v1, Lteam/opay/pay/R$mipmap;->ic_pay_success:I

    .line 159
    .line 160
    invoke-virtual {p1, v2, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 161
    .line 162
    .line 163
    sget v1, Lteam/opay/pay/R$id;->tv_status:I

    .line 164
    .line 165
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/PaymentResponse;->p()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    if-nez v2, :cond_8

    .line 170
    .line 171
    move-object v2, v3

    .line 172
    :cond_8
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    if-nez v5, :cond_9

    .line 177
    .line 178
    sget v2, Lteam/opay/pay/R$string;->osdk_pay_result_success:I

    .line 179
    .line 180
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    :cond_9
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 185
    .line 186
    .line 187
    :goto_1
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/PaymentResponse;->l()Lteam/opay/pay/cashier/result/OrderStatus;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    sget-object v2, Lteam/opay/pay/cashier/result/OrderStatus;->FAIL:Lteam/opay/pay/cashier/result/OrderStatus;

    .line 192
    .line 193
    if-ne v1, v2, :cond_c

    .line 194
    .line 195
    sget v1, Lteam/opay/pay/R$id;->fail_tv:I

    .line 196
    .line 197
    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/PaymentResponse;->i()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    if-nez v2, :cond_a

    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_a
    move-object v3, v2

    .line 208
    :goto_2
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-nez v2, :cond_b

    .line 213
    .line 214
    sget v2, Lteam/opay/pay/R$string;->payment_failed_description:I

    .line 215
    .line 216
    invoke-static {v2}, Ljmf;->k(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    :cond_b
    invoke-virtual {p1, v1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 221
    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_c
    sget v1, Lteam/opay/pay/R$id;->fail_tv:I

    .line 225
    .line 226
    const/4 v2, 0x0

    .line 227
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 228
    .line 229
    .line 230
    :goto_3
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/PaymentResponse;->g()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    const/4 v2, 0x0

    .line 235
    if-eqz v1, :cond_d

    .line 236
    .line 237
    invoke-virtual {v1}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->getPositive()Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-ne v1, v4, :cond_d

    .line 242
    .line 243
    sget v1, Lteam/opay/pay/R$id;->before_amount:I

    .line 244
    .line 245
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    check-cast v1, Landroid/widget/TextView;

    .line 250
    .line 251
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    invoke-static {v1, v4}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 255
    .line 256
    .line 257
    const/16 v3, 0x10

    .line 258
    .line 259
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/PaymentResponse;->g()Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-static {v3, v2, v4, v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->toText$default(Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    .line 272
    .line 273
    :cond_d
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/PaymentResponse;->r()Lteam/opay/pay/cashier/ActivityItemInfo;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    if-eqz v1, :cond_11

    .line 278
    .line 279
    sget v1, Lteam/opay/pay/R$id;->layoutPro:I

    .line 280
    .line 281
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    check-cast v1, Landroid/widget/LinearLayout;

    .line 286
    .line 287
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/PaymentResponse;->r()Lteam/opay/pay/cashier/ActivityItemInfo;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-virtual {v3}, Lteam/opay/pay/cashier/ActivityItemInfo;->a()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    if-eqz v3, :cond_f

    .line 302
    .line 303
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    if-nez v3, :cond_e

    .line 308
    .line 309
    goto :goto_4

    .line 310
    :cond_e
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/PaymentResponse;->r()Lteam/opay/pay/cashier/ActivityItemInfo;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-virtual {v3}, Lteam/opay/pay/cashier/ActivityItemInfo;->a()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    const/16 v5, 0x8

    .line 319
    .line 320
    invoke-static {v1, v5, v3}, Lteam/opay/core/android/ViewKt;->s(Landroid/view/View;ILjava/lang/String;)V

    .line 321
    .line 322
    .line 323
    :cond_f
    :goto_4
    sget v1, Lteam/opay/pay/R$id;->tvProInfo:I

    .line 324
    .line 325
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    check-cast v1, Landroid/widget/TextView;

    .line 330
    .line 331
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/PaymentResponse;->r()Lteam/opay/pay/cashier/ActivityItemInfo;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    invoke-virtual {v3}, Lteam/opay/pay/cashier/ActivityItemInfo;->d()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/PaymentResponse;->r()Lteam/opay/pay/cashier/ActivityItemInfo;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    invoke-virtual {v5}, Lteam/opay/pay/cashier/ActivityItemInfo;->b()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    new-instance v6, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    const-string v3, " "

    .line 356
    .line 357
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    sget-object v5, Lteam/opay/swarmfoundation/color/DarkColors;->a:Lteam/opay/swarmfoundation/color/DarkColors;

    .line 368
    .line 369
    invoke-virtual {v5, v3}, Lteam/opay/swarmfoundation/color/DarkColors;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/PaymentResponse;->r()Lteam/opay/pay/cashier/ActivityItemInfo;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    invoke-virtual {v1}, Lteam/opay/pay/cashier/ActivityItemInfo;->c()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    if-eqz v1, :cond_11

    .line 385
    .line 386
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    if-nez v1, :cond_10

    .line 391
    .line 392
    goto :goto_5

    .line 393
    :cond_10
    sget v1, Lteam/opay/pay/R$id;->iconProInfo:I

    .line 394
    .line 395
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    move-object v5, v1

    .line 400
    check-cast v5, Lcom/opay/team/newhome/home/ImageLottieView;

    .line 401
    .line 402
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    invoke-static {v5}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/PaymentResponse;->r()Lteam/opay/pay/cashier/ActivityItemInfo;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    invoke-virtual {v1}, Lteam/opay/pay/cashier/ActivityItemInfo;->c()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v6

    .line 416
    sget v7, Lteam/opay/pay/R$mipmap;->logo:I

    .line 417
    .line 418
    const/16 v12, 0x3c

    .line 419
    .line 420
    const/4 v13, 0x0

    .line 421
    const/4 v8, 0x0

    .line 422
    const/4 v9, 0x0

    .line 423
    const/4 v10, 0x0

    .line 424
    const/4 v11, 0x0

    .line 425
    invoke-static/range {v5 .. v13}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 426
    .line 427
    .line 428
    :cond_11
    :goto_5
    sget v1, Lteam/opay/pay/R$id;->tv_amount:I

    .line 429
    .line 430
    invoke-virtual {p1, v1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/PaymentResponse;->c()Ljava/util/List;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    if-eqz v0, :cond_15

    .line 438
    .line 439
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 444
    .line 445
    .line 446
    move-result v3

    .line 447
    if-eqz v3, :cond_13

    .line 448
    .line 449
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v3

    .line 453
    move-object v5, v3

    .line 454
    check-cast v5, Lteam/opay/pay/cashier/result/AmountView;

    .line 455
    .line 456
    invoke-virtual {v5}, Lteam/opay/pay/cashier/result/AmountView;->c()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v5

    .line 460
    const-string v6, "Payment amount"

    .line 461
    .line 462
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    move-result v5

    .line 466
    if-eqz v5, :cond_12

    .line 467
    .line 468
    goto :goto_6

    .line 469
    :cond_13
    move-object v3, v2

    .line 470
    :goto_6
    check-cast v3, Lteam/opay/pay/cashier/result/AmountView;

    .line 471
    .line 472
    if-eqz v3, :cond_15

    .line 473
    .line 474
    invoke-virtual {v3}, Lteam/opay/pay/cashier/result/AmountView;->b()Lteam/opay/pay/cashier/result/KeyValue;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    if-eqz v0, :cond_15

    .line 479
    .line 480
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/KeyValue;->b()Lteam/opay/pay/cashier/result/Value;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    if-eqz v0, :cond_15

    .line 485
    .line 486
    new-instance v3, Lteam/opay/core/api/GraphQL$CurrencyAmount;

    .line 487
    .line 488
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/Value;->b()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v5

    .line 492
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/Value;->a()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    if-nez v0, :cond_14

    .line 497
    .line 498
    const-string v0, "NGN"

    .line 499
    .line 500
    :cond_14
    invoke-direct {v3, v5, v0}, Lteam/opay/core/api/GraphQL$CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    invoke-static {v3, v2, v4, v2}, Lteam/opay/core/api/GraphQL$CurrencyAmount;->toText$default(Lteam/opay/core/api/GraphQL$CurrencyAmount;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    :cond_15
    invoke-virtual {p1, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 508
    .line 509
    .line 510
    :cond_16
    return-void
.end method

.method public final F(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/MulitSpanItemEntry;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lteam/opay/pay/reward/marketing/PayResultMarketing;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->a()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lteam/opay/pay/reward/marketing/PayResultMarketing;

    .line 14
    .line 15
    invoke-virtual {v0}, Lteam/opay/pay/reward/marketing/PayResultMarketing;->getWidgetJson()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    sget v1, Lteam/opay/pay/R$id;->tag_key_pay_result_holder:I

    .line 29
    .line 30
    const-string v2, "marketing_tag"

    .line 31
    .line 32
    invoke-virtual {p1, v0, v1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setTag(IILjava/lang/Object;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 33
    .line 34
    .line 35
    sget-object p1, Lteam/opay/pay/reward/marketing/MarketingFragment;->r:Lteam/opay/pay/reward/marketing/MarketingFragment$Companion;

    .line 36
    .line 37
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->a()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lteam/opay/pay/reward/marketing/PayResultMarketing;

    .line 42
    .line 43
    invoke-virtual {v0}, Lteam/opay/pay/reward/marketing/PayResultMarketing;->getWidgetJson()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->a()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    check-cast p2, Lteam/opay/pay/reward/marketing/PayResultMarketing;

    .line 52
    .line 53
    invoke-virtual {p2}, Lteam/opay/pay/reward/marketing/PayResultMarketing;->getOrderNo()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    if-nez p2, :cond_1

    .line 58
    .line 59
    const-string p2, ""

    .line 60
    .line 61
    :cond_1
    invoke-virtual {p1, v0, p2}, Lteam/opay/pay/reward/marketing/MarketingFragment$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/pay/reward/marketing/MarketingFragment;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->j:Landroidx/fragment/app/Fragment;

    .line 66
    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v0, "buildMarketing "

    .line 73
    .line 74
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    :cond_2
    return-void
.end method

.method public final G(Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->b:Lteam/opay/pay/cashier/result/PaymentResponse;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget v0, Lteam/opay/pay/R$id;->tv_tips:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/widget/TextView;

    .line 13
    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    sget-object v0, Lteam/opay/swarmfoundation/color/DarkColors;->a:Lteam/opay/swarmfoundation/color/DarkColors;

    .line 17
    .line 18
    iget-object v1, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->b:Lteam/opay/pay/cashier/result/PaymentResponse;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Lteam/opay/pay/cashier/result/PaymentResponse;->v()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x0

    .line 28
    :goto_0
    if-nez v1, :cond_2

    .line 29
    .line 30
    const-string v1, ""

    .line 31
    .line 32
    :cond_2
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/color/DarkColors;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    :cond_3
    return-void
.end method

.method public final H(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/MulitSpanItemEntry;)V
    .locals 12

    .line 1
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_f

    .line 6
    .line 7
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->a()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v0, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_a

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->a()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "getData(...)"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->a()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    instance-of v3, v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;

    .line 52
    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    check-cast v0, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move-object v0, v2

    .line 59
    :goto_0
    check-cast p2, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;

    .line 60
    .line 61
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;->getStatus()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const-string v4, "SUCCESS"

    .line 66
    .line 67
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_2

    .line 72
    .line 73
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 74
    .line 75
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    sget v4, Lteam/opay/pay/R$drawable;->shape_white_left_top_12:I

    .line 80
    .line 81
    invoke-static {v3, v4}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    sget v4, Lteam/opay/pay/R$mipmap;->bank_progress_success_v2:I

    .line 86
    .line 87
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    const-string v4, "PENDING"

    .line 93
    .line 94
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_3

    .line 99
    .line 100
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 101
    .line 102
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    sget v4, Lteam/opay/pay/R$color;->osdk_color_white:I

    .line 107
    .line 108
    invoke-static {v3, v4}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .line 113
    .line 114
    invoke-direct {v4, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 115
    .line 116
    .line 117
    sget v3, Lteam/opay/pay/R$mipmap;->bank_progress_waiting_v2:I

    .line 118
    .line 119
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    move-object v11, v4

    .line 124
    move-object v4, v3

    .line 125
    move-object v3, v11

    .line 126
    goto :goto_1

    .line 127
    :cond_3
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 128
    .line 129
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    sget v4, Lteam/opay/pay/R$drawable;->shape_white_right_top_12:I

    .line 134
    .line 135
    invoke-static {v3, v4}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    sget v4, Lteam/opay/pay/R$mipmap;->bank_progress_none:I

    .line 140
    .line 141
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    :goto_1
    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 146
    .line 147
    invoke-virtual {v5, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 148
    .line 149
    .line 150
    sget v3, Lteam/opay/pay/R$id;->label:I

    .line 151
    .line 152
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    check-cast v3, Landroidx/appcompat/widget/AppCompatImageView;

    .line 157
    .line 158
    if-eqz v3, :cond_4

    .line 159
    .line 160
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 165
    .line 166
    .line 167
    :cond_4
    sget v3, Lteam/opay/pay/R$id;->line_left:I

    .line 168
    .line 169
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    add-int/lit8 v1, v1, -0x1

    .line 185
    .line 186
    invoke-static {v4, v1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    check-cast v1, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;

    .line 191
    .line 192
    if-eqz v1, :cond_5

    .line 193
    .line 194
    invoke-virtual {v1}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->a()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    goto :goto_2

    .line 199
    :cond_5
    move-object v1, v2

    .line 200
    :goto_2
    const-string v4, "INIT"

    .line 201
    .line 202
    if-eqz v1, :cond_7

    .line 203
    .line 204
    instance-of v1, v1, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;

    .line 205
    .line 206
    if-eqz v1, :cond_7

    .line 207
    .line 208
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 212
    .line 213
    .line 214
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 215
    .line 216
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;->getStatus()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    if-eqz v5, :cond_6

    .line 225
    .line 226
    sget v5, Lteam/opay/pay/R$color;->black_09:I

    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_6
    sget v5, Lteam/opay/pay/R$color;->color_00B876:I

    .line 230
    .line 231
    :goto_3
    invoke-static {v1, v5}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 236
    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    invoke-static {v3}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 243
    .line 244
    .line 245
    :goto_4
    sget v1, Lteam/opay/pay/R$id;->line_right:I

    .line 246
    .line 247
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    if-eqz v0, :cond_9

    .line 252
    .line 253
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 257
    .line 258
    .line 259
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 260
    .line 261
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;->getStatus()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-eqz v3, :cond_8

    .line 270
    .line 271
    sget v3, Lteam/opay/pay/R$color;->black_09:I

    .line 272
    .line 273
    goto :goto_5

    .line 274
    :cond_8
    sget v3, Lteam/opay/pay/R$color;->color_00B876:I

    .line 275
    .line 276
    :goto_5
    invoke-static {v0, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 281
    .line 282
    .line 283
    goto :goto_6

    .line 284
    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 288
    .line 289
    .line 290
    :goto_6
    sget v0, Lteam/opay/pay/R$id;->label_name:I

    .line 291
    .line 292
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    check-cast v0, Landroid/widget/TextView;

    .line 297
    .line 298
    if-eqz v0, :cond_c

    .line 299
    .line 300
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;->getDesc()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    if-eqz v5, :cond_a

    .line 305
    .line 306
    const/4 v9, 0x4

    .line 307
    const/4 v10, 0x0

    .line 308
    const-string v6, "\\n"

    .line 309
    .line 310
    const-string v7, "\n"

    .line 311
    .line 312
    const/4 v8, 0x0

    .line 313
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    goto :goto_7

    .line 318
    :cond_a
    move-object v1, v2

    .line 319
    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    .line 321
    .line 322
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 323
    .line 324
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;->getStatus()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v3

    .line 332
    if-eqz v3, :cond_b

    .line 333
    .line 334
    sget v3, Lteam/opay/pay/R$color;->black_45:I

    .line 335
    .line 336
    goto :goto_8

    .line 337
    :cond_b
    sget v3, Lteam/opay/pay/R$color;->black_65:I

    .line 338
    .line 339
    :goto_8
    invoke-static {v1, v3}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 344
    .line 345
    .line 346
    :cond_c
    sget v0, Lteam/opay/pay/R$id;->time:I

    .line 347
    .line 348
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    move-object v0, p1

    .line 353
    check-cast v0, Landroid/widget/TextView;

    .line 354
    .line 355
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;->getStatus()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    if-nez v0, :cond_d

    .line 364
    .line 365
    move-object v2, p1

    .line 366
    :cond_d
    check-cast v2, Landroid/widget/TextView;

    .line 367
    .line 368
    if-eqz v2, :cond_f

    .line 369
    .line 370
    sget-object p1, Ld1f;->a:Ld1f;

    .line 371
    .line 372
    invoke-virtual {p2}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;->getDate()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object p2

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    const-string p2, "000"

    .line 385
    .line 386
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object p2

    .line 393
    invoke-virtual {p1, p2}, Ld1f;->c(Ljava/lang/String;)Ljava/util/Date;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    if-eqz p1, :cond_e

    .line 398
    .line 399
    invoke-static {p1}, Le1f;->h(Ljava/util/Date;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    if-eqz p1, :cond_e

    .line 404
    .line 405
    goto :goto_9

    .line 406
    :cond_e
    const-string p1, ""

    .line 407
    .line 408
    :goto_9
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    .line 410
    .line 411
    :cond_f
    :goto_a
    return-void
.end method

.method public final I(Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->b:Lteam/opay/pay/cashier/result/PaymentResponse;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget v0, Lteam/opay/pay/R$id;->tv_pendding_tips:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/widget/TextView;

    .line 13
    .line 14
    if-eqz v0, :cond_a

    .line 15
    .line 16
    iget-object v1, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->b:Lteam/opay/pay/cashier/result/PaymentResponse;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Lteam/opay/pay/cashier/result/PaymentResponse;->v()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v1, v2

    .line 27
    :goto_0
    if-eqz v1, :cond_9

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :cond_2
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->b:Lteam/opay/pay/cashier/result/PaymentResponse;

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    invoke-virtual {v1}, Lteam/opay/pay/cashier/result/PaymentResponse;->d()Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    move-object v1, v2

    .line 50
    :goto_1
    if-nez v1, :cond_5

    .line 51
    .line 52
    iget-object p1, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->b:Lteam/opay/pay/cashier/result/PaymentResponse;

    .line 53
    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/PaymentResponse;->v()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    sget v1, Lteam/opay/pay/R$mipmap;->payment_call_ic:I

    .line 71
    .line 72
    invoke-static {p1, v1}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-nez p1, :cond_6

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_6
    const/16 v1, 0xc

    .line 80
    .line 81
    invoke-static {v1}, Ljmf;->d(I)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    invoke-static {v1}, Ljmf;->d(I)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    const/4 v4, 0x0

    .line 90
    invoke-virtual {p1, v4, v4, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->b:Lteam/opay/pay/cashier/result/PaymentResponse;

    .line 94
    .line 95
    if-eqz v1, :cond_7

    .line 96
    .line 97
    invoke-virtual {v1}, Lteam/opay/pay/cashier/result/PaymentResponse;->v()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    :cond_7
    if-nez v2, :cond_8

    .line 102
    .line 103
    const-string v2, ""

    .line 104
    .line 105
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v2, " e"

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-static {v1}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    new-instance v2, Landroid/text/SpannableString;

    .line 127
    .line 128
    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    new-instance v1, Lteam/opay/pay/android/views/CenterAlignImageSpan;

    .line 132
    .line 133
    invoke-direct {v1, p1}, Lteam/opay/pay/android/views/CenterAlignImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    add-int/lit8 p1, p1, -0x1

    .line 141
    .line 142
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    const/16 v4, 0x11

    .line 147
    .line 148
    invoke-virtual {v2, v1, p1, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    new-instance p1, Lhhb;

    .line 155
    .line 156
    invoke-direct {p1, p0}, Lhhb;-><init>(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_9
    :goto_2
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 164
    .line 165
    .line 166
    :cond_a
    :goto_3
    return-void
.end method

.method public final K(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/MulitSpanItemEntry;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    instance-of v0, p2, Lteam/opay/pay/cashier/result/AmountView;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p2, Lteam/opay/pay/cashier/result/AmountView;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p2, v1

    .line 14
    :goto_0
    if-nez p2, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/AmountView;->b()Lteam/opay/pay/cashier/result/KeyValue;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/KeyValue;->a()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    move-object v0, v1

    .line 29
    :goto_1
    if-nez v0, :cond_3

    .line 30
    .line 31
    const-string v0, ""

    .line 32
    .line 33
    :cond_3
    sget v2, Lteam/opay/pay/R$id;->tv_token:I

    .line 34
    .line 35
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/widget/TextView;

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/AmountView;->a()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const/4 v4, 0x2

    .line 49
    if-eqz v3, :cond_5

    .line 50
    .line 51
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_4

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_4
    sget-object v3, Lc03;->a:Lc03;

    .line 59
    .line 60
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/AmountView;->a()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-static {v3, v5, v1, v4, v1}, Lc03;->f(Lc03;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    .line 70
    .line 71
    :cond_5
    :goto_2
    sget v1, Lteam/opay/pay/R$id;->btn_copy:I

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/AmountView;->d()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    const-string v2, "Y"

    .line 82
    .line 83
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_6

    .line 88
    .line 89
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    const-string p2, "<[^>]*>"

    .line 96
    .line 97
    invoke-static {p2, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 102
    .line 103
    const-string v1, "itemView"

    .line 104
    .line 105
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    new-instance v1, Ljhb;

    .line 109
    .line 110
    invoke-direct {v1, p0, p2, v0}, Ljhb;-><init>(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-static {p1, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 121
    .line 122
    .line 123
    :goto_3
    return-void
.end method

.method public M(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/MulitSpanItemEntry;)V
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/cashier/result/MulitSpanItemEntry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "helper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->c()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    :pswitch_0
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->t(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/MulitSpanItemEntry;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->K(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/MulitSpanItemEntry;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->w(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/MulitSpanItemEntry;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->F(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/MulitSpanItemEntry;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->v(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/MulitSpanItemEntry;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->w(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/MulitSpanItemEntry;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->y(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/MulitSpanItemEntry;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :pswitch_8
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->G(Lcom/chad/library/adapter/base/BaseViewHolder;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_9
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->I(Lcom/chad/library/adapter/base/BaseViewHolder;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_a
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->H(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/MulitSpanItemEntry;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :pswitch_b
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->D(Lcom/chad/library/adapter/base/BaseViewHolder;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final N(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "mContext"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    sget v2, Lteam/opay/pay/R$string;->payment_status_sheet_label_token:I

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "getString(...)"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1, p1}, Lteam/opay/core/android/ContextKt;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    sget v0, Lteam/opay/pay/R$string;->clipboard_copy:I

    .line 27
    .line 28
    invoke-static {v0}, Ljmf;->k(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p1, v0}, Lkmf;->J(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final O(Lteam/opay/pay/cashier/result/PaymentResultShowContent;)V
    .locals 14

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x5

    .line 7
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/PaymentResultShowContent;->i()Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v6

    .line 11
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    const-string v7, "inside"

    .line 18
    .line 19
    const-string v8, "page_type"

    .line 20
    .line 21
    const-string v9, "link"

    .line 22
    .line 23
    const-string v10, "value"

    .line 24
    .line 25
    const-string v11, "action"

    .line 26
    .line 27
    const-string v12, "key"

    .line 28
    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    sget-object v6, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 32
    .line 33
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/PaymentResultShowContent;->e()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v13

    .line 37
    invoke-static {v12, v13}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object v12

    .line 41
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/PaymentResultShowContent;->b()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v13

    .line 45
    invoke-static {v11, v13}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 46
    .line 47
    .line 48
    move-result-object v11

    .line 49
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/PaymentResultShowContent;->c()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v13

    .line 53
    invoke-static {v10, v13}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/PaymentResultShowContent;->f()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v9, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {v8, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    new-array v5, v5, [Lkotlin/Pair;

    .line 70
    .line 71
    aput-object v12, v5, v4

    .line 72
    .line 73
    aput-object v11, v5, v3

    .line 74
    .line 75
    aput-object v10, v5, v2

    .line 76
    .line 77
    aput-object p1, v5, v1

    .line 78
    .line 79
    aput-object v7, v5, v0

    .line 80
    .line 81
    const-string p1, "COMMON_payment_pending_item_click"

    .line 82
    .line 83
    invoke-virtual {v6, p1, v5}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    sget-object v6, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 88
    .line 89
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/PaymentResultShowContent;->e()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v13

    .line 93
    invoke-static {v12, v13}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 94
    .line 95
    .line 96
    move-result-object v12

    .line 97
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/PaymentResultShowContent;->b()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v13

    .line 101
    invoke-static {v11, v13}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/PaymentResultShowContent;->c()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v13

    .line 109
    invoke-static {v10, v13}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/PaymentResultShowContent;->f()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {v9, p1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {v8, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    new-array v5, v5, [Lkotlin/Pair;

    .line 126
    .line 127
    aput-object v12, v5, v4

    .line 128
    .line 129
    aput-object v11, v5, v3

    .line 130
    .line 131
    aput-object v10, v5, v2

    .line 132
    .line 133
    aput-object p1, v5, v1

    .line 134
    .line 135
    aput-object v7, v5, v0

    .line 136
    .line 137
    const-string p1, "COMMON_payment_succ_item_click"

    .line 138
    .line 139
    invoke-virtual {v6, p1, v5}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 140
    .line 141
    .line 142
    :goto_0
    return-void
.end method

.method public final P(Landroid/widget/TextView;)V
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/pay/transfer/TransferActCenter;->c:Lteam/opay/pay/transfer/TransferActCenter$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/transfer/TransferActCenter$Companion;->a()Lteam/opay/pay/transfer/TransferActCenter;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lteam/opay/pay/transfer/TransferActCenter;->g()Lteam/opay/pay/api/AATransferTrial;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lteam/opay/pay/api/AATransferTrial;->c()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v0}, Lteam/opay/pay/transfer/TransferActCenter$Companion;->a()Lteam/opay/pay/transfer/TransferActCenter;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lteam/opay/pay/transfer/TransferActCenter;->j()Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    :goto_1
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 52
    .line 53
    .line 54
    :goto_2
    return-void
.end method

.method public final Q(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/odialog/net/AdDataItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->f:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final R(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/cashier/result/PaymentBankInfoResponse;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->c:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final S(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/cashier/result/FunctionConf;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->e:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final T(Lteam/opay/pay/cashier/result/PaymentResponse;)V
    .locals 29
    .param p1    # Lteam/opay/pay/cashier/result/PaymentResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    iget-object v5, v0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->k:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    if-nez v5, :cond_0

    .line 15
    .line 16
    iget-object v5, v0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->k:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 19
    .line 20
    .line 21
    :cond_0
    if-nez v1, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/cashier/result/PaymentResponse;->l()Lteam/opay/pay/cashier/result/OrderStatus;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    sget-object v6, Lteam/opay/pay/cashier/result/OrderStatus;->PENDING:Lteam/opay/pay/cashier/result/OrderStatus;

    .line 29
    .line 30
    if-ne v5, v6, :cond_2

    .line 31
    .line 32
    const/4 v5, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v5, 0x0

    .line 35
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v1, v0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->b:Lteam/opay/pay/cashier/result/PaymentResponse;

    .line 41
    .line 42
    iget-object v7, v0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->k:Ljava/util/ArrayList;

    .line 43
    .line 44
    new-instance v8, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;

    .line 45
    .line 46
    const/4 v9, 0x0

    .line 47
    const/16 v10, 0xc

    .line 48
    .line 49
    invoke-direct {v8, v3, v9, v10}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;-><init>(ILjava/lang/Object;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/cashier/result/PaymentResponse;->a()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    if-eqz v7, :cond_4

    .line 60
    .line 61
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-eqz v7, :cond_3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    iget-object v7, v0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->k:Ljava/util/ArrayList;

    .line 69
    .line 70
    new-instance v8, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;

    .line 71
    .line 72
    const/16 v11, 0xd

    .line 73
    .line 74
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/cashier/result/PaymentResponse;->a()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v12

    .line 78
    invoke-direct {v8, v11, v12, v10}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;-><init>(ILjava/lang/Object;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_1
    const/4 v7, 0x3

    .line 85
    const/4 v8, 0x4

    .line 86
    if-nez v5, :cond_6

    .line 87
    .line 88
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/cashier/result/PaymentResponse;->v()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    if-eqz v11, :cond_7

    .line 93
    .line 94
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    .line 95
    .line 96
    .line 97
    move-result v11

    .line 98
    if-nez v11, :cond_5

    .line 99
    .line 100
    goto/16 :goto_2

    .line 101
    .line 102
    :cond_5
    iget-object v11, v0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->k:Ljava/util/ArrayList;

    .line 103
    .line 104
    new-instance v12, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;

    .line 105
    .line 106
    invoke-direct {v12, v8, v9, v10}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;-><init>(ILjava/lang/Object;I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 114
    .line 115
    .line 116
    move-result-wide v11

    .line 117
    const/16 v13, 0x3e8

    .line 118
    .line 119
    int-to-long v13, v13

    .line 120
    div-long/2addr v11, v13

    .line 121
    iget-object v13, v0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->k:Ljava/util/ArrayList;

    .line 122
    .line 123
    new-instance v14, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;

    .line 124
    .line 125
    new-instance v15, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;

    .line 126
    .line 127
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v17

    .line 131
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/cashier/result/PaymentResponse;->n()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v18

    .line 135
    const/16 v26, 0x3f8

    .line 136
    .line 137
    const/16 v27, 0x0

    .line 138
    .line 139
    const-string v16, "SUCCESS"

    .line 140
    .line 141
    const/16 v19, 0x0

    .line 142
    .line 143
    const/16 v20, 0x0

    .line 144
    .line 145
    const/16 v21, 0x0

    .line 146
    .line 147
    const/16 v22, 0x0

    .line 148
    .line 149
    const/16 v23, 0x0

    .line 150
    .line 151
    const/16 v24, 0x0

    .line 152
    .line 153
    const/16 v25, 0x0

    .line 154
    .line 155
    move-object/from16 v28, v15

    .line 156
    .line 157
    invoke-direct/range {v15 .. v27}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 158
    .line 159
    .line 160
    invoke-direct {v14, v2, v15, v8}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;-><init>(ILjava/lang/Object;I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    iget-object v13, v0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->k:Ljava/util/ArrayList;

    .line 167
    .line 168
    new-instance v14, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;

    .line 169
    .line 170
    new-instance v15, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;

    .line 171
    .line 172
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v17

    .line 176
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/cashier/result/PaymentResponse;->q()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v18

    .line 180
    const-string v16, "PENDING"

    .line 181
    .line 182
    move-object/from16 v28, v15

    .line 183
    .line 184
    invoke-direct/range {v15 .. v27}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 185
    .line 186
    .line 187
    invoke-direct {v14, v2, v15, v8}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;-><init>(ILjava/lang/Object;I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    iget-object v13, v0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->k:Ljava/util/ArrayList;

    .line 194
    .line 195
    new-instance v14, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;

    .line 196
    .line 197
    new-instance v15, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;

    .line 198
    .line 199
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v17

    .line 203
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/cashier/result/PaymentResponse;->o()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v18

    .line 207
    const-string v16, "INIT"

    .line 208
    .line 209
    move-object v11, v15

    .line 210
    invoke-direct/range {v15 .. v27}, Lteam/opay/pay/history/UserTransactionsDetailRepository$TransactionProgress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 211
    .line 212
    .line 213
    invoke-direct {v14, v2, v11, v8}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;-><init>(ILjava/lang/Object;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    iget-object v11, v0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->k:Ljava/util/ArrayList;

    .line 220
    .line 221
    new-instance v12, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;

    .line 222
    .line 223
    invoke-direct {v12, v7, v9, v10}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;-><init>(ILjava/lang/Object;I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    :cond_7
    :goto_2
    iget-object v11, v0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->b:Lteam/opay/pay/cashier/result/PaymentResponse;

    .line 230
    .line 231
    if-eqz v11, :cond_8

    .line 232
    .line 233
    invoke-virtual {v11}, Lteam/opay/pay/cashier/result/PaymentResponse;->u()Ljava/util/List;

    .line 234
    .line 235
    .line 236
    move-result-object v11

    .line 237
    goto :goto_3

    .line 238
    :cond_8
    move-object v11, v9

    .line 239
    :goto_3
    const-string v12, ","

    .line 240
    .line 241
    if-eqz v11, :cond_10

    .line 242
    .line 243
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    .line 244
    .line 245
    .line 246
    move-result v11

    .line 247
    if-eqz v11, :cond_9

    .line 248
    .line 249
    goto/16 :goto_8

    .line 250
    .line 251
    :cond_9
    iget-object v11, v0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->k:Ljava/util/ArrayList;

    .line 252
    .line 253
    new-instance v13, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;

    .line 254
    .line 255
    const/16 v14, 0xa

    .line 256
    .line 257
    invoke-direct {v13, v14, v9, v10}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;-><init>(ILjava/lang/Object;I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    iget-object v11, v0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->b:Lteam/opay/pay/cashier/result/PaymentResponse;

    .line 264
    .line 265
    if-eqz v11, :cond_b

    .line 266
    .line 267
    invoke-virtual {v11}, Lteam/opay/pay/cashier/result/PaymentResponse;->u()Ljava/util/List;

    .line 268
    .line 269
    .line 270
    move-result-object v11

    .line 271
    if-eqz v11, :cond_b

    .line 272
    .line 273
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 274
    .line 275
    .line 276
    move-result-object v11

    .line 277
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 278
    .line 279
    .line 280
    move-result v13

    .line 281
    if-eqz v13, :cond_b

    .line 282
    .line 283
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v13

    .line 287
    check-cast v13, Lteam/opay/pay/cashier/result/PaymentResultShowContent;

    .line 288
    .line 289
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 290
    .line 291
    .line 292
    move-result v14

    .line 293
    if-nez v14, :cond_a

    .line 294
    .line 295
    invoke-virtual {v13}, Lteam/opay/pay/cashier/result/PaymentResultShowContent;->e()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v14

    .line 299
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    goto :goto_5

    .line 303
    :cond_a
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v13}, Lteam/opay/pay/cashier/result/PaymentResultShowContent;->e()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v14

    .line 310
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    :goto_5
    iget-object v14, v0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->k:Ljava/util/ArrayList;

    .line 314
    .line 315
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 316
    .line 317
    .line 318
    move-result-object v15

    .line 319
    invoke-virtual {v13, v15}, Lteam/opay/pay/cashier/result/PaymentResultShowContent;->j(Ljava/lang/Boolean;)V

    .line 320
    .line 321
    .line 322
    sget-object v15, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 323
    .line 324
    new-instance v15, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;

    .line 325
    .line 326
    const/4 v8, 0x5

    .line 327
    invoke-direct {v15, v8, v13, v10}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;-><init>(ILjava/lang/Object;I)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    const/4 v8, 0x4

    .line 334
    goto :goto_4

    .line 335
    :cond_b
    iget-object v8, v0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->b:Lteam/opay/pay/cashier/result/PaymentResponse;

    .line 336
    .line 337
    if-eqz v8, :cond_d

    .line 338
    .line 339
    invoke-virtual {v8}, Lteam/opay/pay/cashier/result/PaymentResponse;->a()Ljava/util/List;

    .line 340
    .line 341
    .line 342
    move-result-object v8

    .line 343
    if-eqz v8, :cond_d

    .line 344
    .line 345
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 346
    .line 347
    .line 348
    move-result-object v8

    .line 349
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 350
    .line 351
    .line 352
    move-result v11

    .line 353
    if-eqz v11, :cond_d

    .line 354
    .line 355
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v11

    .line 359
    check-cast v11, Lteam/opay/pay/cashier/ActivityItemInfo;

    .line 360
    .line 361
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 362
    .line 363
    .line 364
    move-result v13

    .line 365
    if-nez v13, :cond_c

    .line 366
    .line 367
    invoke-virtual {v11}, Lteam/opay/pay/cashier/ActivityItemInfo;->d()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v11

    .line 371
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    goto :goto_6

    .line 375
    :cond_c
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v11}, Lteam/opay/pay/cashier/ActivityItemInfo;->d()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v11

    .line 382
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    goto :goto_6

    .line 386
    :cond_d
    iget-object v8, v0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->b:Lteam/opay/pay/cashier/result/PaymentResponse;

    .line 387
    .line 388
    if-eqz v8, :cond_f

    .line 389
    .line 390
    invoke-virtual {v8}, Lteam/opay/pay/cashier/result/PaymentResponse;->r()Lteam/opay/pay/cashier/ActivityItemInfo;

    .line 391
    .line 392
    .line 393
    move-result-object v8

    .line 394
    if-eqz v8, :cond_f

    .line 395
    .line 396
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 397
    .line 398
    .line 399
    move-result v11

    .line 400
    if-nez v11, :cond_e

    .line 401
    .line 402
    invoke-virtual {v8}, Lteam/opay/pay/cashier/ActivityItemInfo;->d()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v8

    .line 406
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    goto :goto_7

    .line 410
    :cond_e
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v8}, Lteam/opay/pay/cashier/ActivityItemInfo;->d()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v8

    .line 417
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    :cond_f
    :goto_7
    iget-object v8, v0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->k:Ljava/util/ArrayList;

    .line 421
    .line 422
    new-instance v11, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;

    .line 423
    .line 424
    const/16 v13, 0xb

    .line 425
    .line 426
    invoke-direct {v11, v13, v9, v10}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;-><init>(ILjava/lang/Object;I)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    :cond_10
    :goto_8
    new-instance v8, Ljava/util/ArrayList;

    .line 433
    .line 434
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 435
    .line 436
    .line 437
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/cashier/result/PaymentResponse;->h()Ljava/util/List;

    .line 438
    .line 439
    .line 440
    move-result-object v11

    .line 441
    if-eqz v11, :cond_13

    .line 442
    .line 443
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 444
    .line 445
    .line 446
    move-result-object v11

    .line 447
    :cond_11
    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 448
    .line 449
    .line 450
    move-result v13

    .line 451
    if-eqz v13, :cond_13

    .line 452
    .line 453
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v13

    .line 457
    check-cast v13, Lteam/opay/pay/cashier/result/FunctionConf;

    .line 458
    .line 459
    invoke-virtual {v13}, Lteam/opay/pay/cashier/result/FunctionConf;->d()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v14

    .line 463
    iget-object v15, v0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->g:Ljava/lang/String;

    .line 464
    .line 465
    invoke-static {v14, v15, v4, v2, v9}, Lkotlin/text/StringsKt;->X(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v14

    .line 469
    if-eqz v14, :cond_12

    .line 470
    .line 471
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/cashier/result/PaymentResponse;->t()Z

    .line 472
    .line 473
    .line 474
    move-result v14

    .line 475
    if-eqz v14, :cond_11

    .line 476
    .line 477
    :cond_12
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    goto :goto_9

    .line 481
    :cond_13
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 482
    .line 483
    .line 484
    move-result v11

    .line 485
    const/4 v13, 0x6

    .line 486
    if-ne v11, v7, :cond_14

    .line 487
    .line 488
    const/16 v11, 0x9

    .line 489
    .line 490
    goto :goto_a

    .line 491
    :cond_14
    const/4 v11, 0x6

    .line 492
    :goto_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 493
    .line 494
    .line 495
    move-result v14

    .line 496
    if-eq v14, v3, :cond_16

    .line 497
    .line 498
    if-eq v14, v7, :cond_15

    .line 499
    .line 500
    goto :goto_b

    .line 501
    :cond_15
    const/4 v13, 0x4

    .line 502
    goto :goto_b

    .line 503
    :cond_16
    const/16 v13, 0xc

    .line 504
    .line 505
    :goto_b
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 506
    .line 507
    .line 508
    move-result-object v7

    .line 509
    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 510
    .line 511
    .line 512
    move-result v8

    .line 513
    if-eqz v8, :cond_18

    .line 514
    .line 515
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v8

    .line 519
    check-cast v8, Lteam/opay/pay/cashier/result/FunctionConf;

    .line 520
    .line 521
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 522
    .line 523
    .line 524
    move-result v14

    .line 525
    if-nez v14, :cond_17

    .line 526
    .line 527
    invoke-virtual {v8}, Lteam/opay/pay/cashier/result/FunctionConf;->c()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v14

    .line 531
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    goto :goto_d

    .line 535
    :cond_17
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v8}, Lteam/opay/pay/cashier/result/FunctionConf;->c()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v14

    .line 542
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    :goto_d
    iget-object v14, v0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->k:Ljava/util/ArrayList;

    .line 546
    .line 547
    new-instance v15, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;

    .line 548
    .line 549
    invoke-direct {v15, v11, v8, v13}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;-><init>(ILjava/lang/Object;I)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    .line 554
    .line 555
    goto :goto_c

    .line 556
    :cond_18
    const-string v7, "inside"

    .line 557
    .line 558
    const-string v8, "page_type"

    .line 559
    .line 560
    const-string v11, "key"

    .line 561
    .line 562
    if-eqz v5, :cond_19

    .line 563
    .line 564
    sget-object v5, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 565
    .line 566
    invoke-static {v11, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 567
    .line 568
    .line 569
    move-result-object v6

    .line 570
    invoke-static {v8, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 571
    .line 572
    .line 573
    move-result-object v7

    .line 574
    new-array v2, v2, [Lkotlin/Pair;

    .line 575
    .line 576
    aput-object v6, v2, v4

    .line 577
    .line 578
    aput-object v7, v2, v3

    .line 579
    .line 580
    const-string v3, "COMMON_payment_pending_item_show"

    .line 581
    .line 582
    invoke-virtual {v5, v3, v2}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 583
    .line 584
    .line 585
    goto :goto_e

    .line 586
    :cond_19
    sget-object v5, Lteam/opay/pay/cashier/PaySheetViewModel;->H:Lteam/opay/pay/cashier/PaySheetViewModel$Companion;

    .line 587
    .line 588
    invoke-static {v11, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 589
    .line 590
    .line 591
    move-result-object v6

    .line 592
    invoke-static {v8, v7}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 593
    .line 594
    .line 595
    move-result-object v7

    .line 596
    new-array v2, v2, [Lkotlin/Pair;

    .line 597
    .line 598
    aput-object v6, v2, v4

    .line 599
    .line 600
    aput-object v7, v2, v3

    .line 601
    .line 602
    const-string v3, "COMMON_payment_succ_item_show"

    .line 603
    .line 604
    invoke-virtual {v5, v3, v2}, Lteam/opay/pay/cashier/PaySheetViewModel$Companion;->b(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 605
    .line 606
    .line 607
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/cashier/result/PaymentResponse;->x()Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v2

    .line 611
    if-eqz v2, :cond_1b

    .line 612
    .line 613
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 614
    .line 615
    .line 616
    move-result v2

    .line 617
    if-nez v2, :cond_1a

    .line 618
    .line 619
    goto :goto_f

    .line 620
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/cashier/result/PaymentResponse;->x()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v2

    .line 624
    const-string v3, "null"

    .line 625
    .line 626
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 627
    .line 628
    .line 629
    move-result v2

    .line 630
    if-nez v2, :cond_1b

    .line 631
    .line 632
    iget-object v2, v0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->k:Ljava/util/ArrayList;

    .line 633
    .line 634
    new-instance v3, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;

    .line 635
    .line 636
    new-instance v4, Lteam/opay/pay/reward/marketing/PayResultMarketing;

    .line 637
    .line 638
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/cashier/result/PaymentResponse;->x()Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v5

    .line 642
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/cashier/result/PaymentResponse;->w()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v6

    .line 646
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/cashier/result/PaymentResponse;->k()Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v7

    .line 650
    invoke-direct {v4, v5, v6, v7}, Lteam/opay/pay/reward/marketing/PayResultMarketing;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    const/16 v5, 0x8

    .line 654
    .line 655
    invoke-direct {v3, v5, v4, v10}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;-><init>(ILjava/lang/Object;I)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    :cond_1b
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lteam/opay/pay/cashier/result/PaymentResponse;->e()Ljava/util/List;

    .line 662
    .line 663
    .line 664
    move-result-object v1

    .line 665
    if-eqz v1, :cond_1c

    .line 666
    .line 667
    iget-object v2, v0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->k:Ljava/util/ArrayList;

    .line 668
    .line 669
    new-instance v3, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;

    .line 670
    .line 671
    const/4 v4, 0x7

    .line 672
    invoke-direct {v3, v4, v1, v10}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;-><init>(ILjava/lang/Object;I)V

    .line 673
    .line 674
    .line 675
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    .line 677
    .line 678
    :cond_1c
    iput-object v9, v0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->j:Landroidx/fragment/app/Fragment;

    .line 679
    .line 680
    iget-object v1, v0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->k:Ljava/util/ArrayList;

    .line 681
    .line 682
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 683
    .line 684
    .line 685
    return-void
.end method

.method public final U(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->d:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final V(ZLjava/lang/String;)V
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "categoryName"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-boolean p1, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->h:Z

    .line 7
    .line 8
    iput-object p2, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->i:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x2

    .line 13
    const-string v3, "getData(...)"

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v5, 0x0

    .line 30
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_1

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    check-cast v6, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;

    .line 41
    .line 42
    invoke-virtual {v6}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->a()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    if-eqz v7, :cond_0

    .line 47
    .line 48
    invoke-virtual {v6}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->a()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    instance-of v7, v7, Lteam/opay/pay/cashier/result/FunctionConf;

    .line 53
    .line 54
    if-eqz v7, :cond_0

    .line 55
    .line 56
    invoke-virtual {v6}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->a()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    check-cast v6, Lteam/opay/pay/cashier/result/FunctionConf;

    .line 61
    .line 62
    invoke-virtual {v6}, Lteam/opay/pay/cashier/result/FunctionConf;->d()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    iget-object v7, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->g:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v6, v7, v4, v2, v1}, Lkotlin/text/StringsKt;->X(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_0

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    const/4 v5, -0x1

    .line 79
    :goto_1
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-lez p1, :cond_5

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const/4 p2, 0x0

    .line 100
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_4

    .line 105
    .line 106
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    check-cast v3, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;

    .line 111
    .line 112
    invoke-virtual {v3}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->a()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    if-eqz v5, :cond_3

    .line 117
    .line 118
    invoke-virtual {v3}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->a()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    instance-of v5, v5, Lteam/opay/pay/cashier/result/FunctionConf;

    .line 123
    .line 124
    if-eqz v5, :cond_3

    .line 125
    .line 126
    invoke-virtual {v3}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->a()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Lteam/opay/pay/cashier/result/FunctionConf;

    .line 131
    .line 132
    invoke-virtual {v3}, Lteam/opay/pay/cashier/result/FunctionConf;->d()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    const-string v5, "otravel://choose_category/entry"

    .line 137
    .line 138
    invoke-static {v3, v5, v4, v2, v1}, Lkotlin/text/StringsKt;->X(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-eqz v3, :cond_3

    .line 143
    .line 144
    move v0, p2

    .line 145
    goto :goto_3

    .line 146
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_4
    :goto_3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 150
    .line 151
    .line 152
    :cond_5
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->M(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/MulitSpanItemEntry;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p1}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->onViewAttachedToWindow(Lcom/chad/library/adapter/base/BaseViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 3
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onViewAttachedToWindow(Lcom/chad/library/adapter/base/BaseViewHolder;)V

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lteam/opay/pay/R$id;->tag_key_pay_result_holder:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewAttachedToWindow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5
    const-string v1, "marketing_tag"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget v0, Lteam/opay/pay/R$id;->pay_result_marketing_container:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 7
    iget-object v0, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->j:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->s(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    :cond_0
    return-void
.end method

.method public final t(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/MulitSpanItemEntry;)V
    .locals 8

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    .line 3
    sget v1, Lteam/opay/pay/R$id;->body_list:I

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->a()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    instance-of v2, p2, Ljava/util/List;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    check-cast p2, Ljava/util/List;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p2, 0x0

    .line 23
    :goto_0
    if-nez p2, :cond_1

    .line 24
    .line 25
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    :cond_1
    move-object v5, p2

    .line 30
    new-instance v4, Lteam/opay/pay/cashier/result/ResultActivityInfoAdapter;

    .line 31
    .line 32
    invoke-direct {v4}, Lteam/opay/pay/cashier/result/ResultActivityInfoAdapter;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    const/4 v0, 0x2

    .line 55
    if-le p2, v0, :cond_2

    .line 56
    .line 57
    const/4 p2, 0x0

    .line 58
    invoke-interface {v5, p2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {v4, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 63
    .line 64
    .line 65
    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 66
    .line 67
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 68
    .line 69
    .line 70
    sget p2, Lteam/opay/pay/R$id;->viewMore:I

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Landroid/widget/TextView;

    .line 77
    .line 78
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    new-instance p2, Lghb;

    .line 85
    .line 86
    move-object v2, p2

    .line 87
    move-object v6, p1

    .line 88
    move-object v7, p0

    .line 89
    invoke-direct/range {v2 .. v7}, Lghb;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lteam/opay/pay/cashier/result/ResultActivityInfoAdapter;Ljava/util/List;Landroid/widget/TextView;Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;)V

    .line 90
    .line 91
    .line 92
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v4, v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 97
    .line 98
    .line 99
    :goto_1
    return-void
.end method

.method public final v(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/MulitSpanItemEntry;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->a()Ljava/lang/Object;

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
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->a()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<team.opay.odialog.net.AdDataItem>"

    .line 13
    .line 14
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast p2, Ljava/util/List;

    .line 18
    .line 19
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 20
    .line 21
    sget v0, Lteam/opay/pay/R$id;->item_banner:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lteam/opay/pay/ad/OpayAdBannerView;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lteam/opay/pay/ad/OpayAdBannerView;->b(Ljava/util/List;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final w(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/MulitSpanItemEntry;)V
    .locals 13

    .line 1
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->a()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v0, v0, Lteam/opay/pay/cashier/result/FunctionConf;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->a()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget v1, Lteam/opay/pay/R$id;->ic_btn:I

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    move-object v3, v2

    .line 28
    check-cast v3, Landroidx/appcompat/widget/AppCompatImageView;

    .line 29
    .line 30
    sget v2, Lteam/opay/pay/R$id;->tv_btn:I

    .line 31
    .line 32
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    move-object v9, v4

    .line 37
    check-cast v9, Landroid/widget/TextView;

    .line 38
    .line 39
    iget-object v4, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    sget v5, Lteam/opay/pay/R$color;->black_85:I

    .line 42
    .line 43
    invoke-static {v4, v5}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->b()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    const/16 v4, 0xc

    .line 55
    .line 56
    if-ne p2, v4, :cond_1

    .line 57
    .line 58
    sget p2, Lteam/opay/pay/R$id;->content:I

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 65
    .line 66
    new-instance v4, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 67
    .line 68
    invoke-direct {v4}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->q(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 72
    .line 73
    .line 74
    const/4 v5, 0x7

    .line 75
    const/4 v6, 0x6

    .line 76
    invoke-virtual {v4, v1, v5, v2, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->t(IIII)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    move-object p2, v0

    .line 83
    check-cast p2, Lteam/opay/pay/cashier/result/FunctionConf;

    .line 84
    .line 85
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/FunctionConf;->d()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget-object v2, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->g:Ljava/lang/String;

    .line 90
    .line 91
    const/4 v10, 0x0

    .line 92
    const/4 v11, 0x2

    .line 93
    const/4 v12, 0x0

    .line 94
    invoke-static {v1, v2, v10, v11, v12}, Lkotlin/text/StringsKt;->X(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_2

    .line 99
    .line 100
    iget-boolean v1, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->h:Z

    .line 101
    .line 102
    if-eqz v1, :cond_2

    .line 103
    .line 104
    sget v1, Lteam/opay/pay/R$mipmap;->pay_usccess_save_account_success:I

    .line 105
    .line 106
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 107
    .line 108
    .line 109
    sget-object v1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 110
    .line 111
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    sget v2, Lteam/opay/pay/R$string;->osdk_beneficiary_added:I

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 129
    .line 130
    sget v2, Lteam/opay/pay/R$color;->black_45:I

    .line 131
    .line 132
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    .line 138
    .line 139
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 140
    .line 141
    invoke-virtual {v1, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_2
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/FunctionConf;->e()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_4

    .line 150
    .line 151
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/FunctionConf;->a()Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    if-eqz v1, :cond_3

    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 162
    .line 163
    .line 164
    :cond_3
    sget v1, Lteam/opay/pay/R$id;->tv_tag:I

    .line 165
    .line 166
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    const-string v2, "getView(...)"

    .line 171
    .line 172
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    check-cast v1, Landroid/widget/TextView;

    .line 176
    .line 177
    invoke-virtual {p0, v1}, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->P(Landroid/widget/TextView;)V

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/FunctionConf;->b()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    sget v5, Lteam/opay/pay/R$mipmap;->logo:I

    .line 189
    .line 190
    const/4 v7, 0x4

    .line 191
    const/4 v8, 0x0

    .line 192
    const/4 v6, 0x0

    .line 193
    invoke-static/range {v3 .. v8}, Lme7;->v(Landroid/widget/ImageView;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    :goto_0
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/FunctionConf;->c()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    .line 202
    .line 203
    :goto_1
    iget-object v1, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->i:Ljava/lang/String;

    .line 204
    .line 205
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-lez v1, :cond_5

    .line 210
    .line 211
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/FunctionConf;->d()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    const-string v1, "otravel://choose_category/entry"

    .line 216
    .line 217
    invoke-static {p2, v1, v10, v11, v12}, Lkotlin/text/StringsKt;->X(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result p2

    .line 221
    if-eqz p2, :cond_5

    .line 222
    .line 223
    iget-object p2, p0, Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;->i:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v9, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    .line 227
    .line 228
    :cond_5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 229
    .line 230
    const-string p2, "itemView"

    .line 231
    .line 232
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    new-instance p2, Lihb;

    .line 236
    .line 237
    invoke-direct {p2, p0, v0}, Lihb;-><init>(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    invoke-static {p1, p2}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 241
    .line 242
    .line 243
    :cond_6
    :goto_2
    return-void
.end method

.method public final y(Lcom/chad/library/adapter/base/BaseViewHolder;Lteam/opay/pay/cashier/result/MulitSpanItemEntry;)V
    .locals 12

    .line 1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    .line 3
    invoke-static {p1}, Lrj7;->bind(Landroid/view/View;)Lrj7;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "bind(...)"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/MulitSpanItemEntry;->a()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    instance-of v0, p2, Lteam/opay/pay/cashier/result/PaymentResultShowContent;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    check-cast p2, Lteam/opay/pay/cashier/result/PaymentResultShowContent;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object p2, v1

    .line 25
    :goto_0
    if-nez p2, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object v0, p1, Lrj7;->g:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/PaymentResultShowContent;->e()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/PaymentResultShowContent;->d()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v2, "keyIcon"

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object v0, p1, Lrj7;->d:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 53
    .line 54
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    iget-object v3, p1, Lrj7;->d:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 61
    .line 62
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/PaymentResultShowContent;->d()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    const/16 v10, 0x3e

    .line 67
    .line 68
    const/4 v11, 0x0

    .line 69
    const/4 v5, 0x0

    .line 70
    const/4 v6, 0x0

    .line 71
    const/4 v7, 0x0

    .line 72
    const/4 v8, 0x0

    .line 73
    const/4 v9, 0x0

    .line 74
    invoke-static/range {v3 .. v11}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    :goto_1
    iget-object v0, p1, Lrj7;->d:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 79
    .line 80
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    :goto_2
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/PaymentResultShowContent;->h()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v2, "valueIcon"

    .line 91
    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_4

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_4
    iget-object v0, p1, Lrj7;->i:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 102
    .line 103
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    iget-object v3, p1, Lrj7;->i:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 110
    .line 111
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/PaymentResultShowContent;->h()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    const/16 v10, 0x3e

    .line 116
    .line 117
    const/4 v11, 0x0

    .line 118
    const/4 v5, 0x0

    .line 119
    const/4 v6, 0x0

    .line 120
    const/4 v7, 0x0

    .line 121
    const/4 v8, 0x0

    .line 122
    const/4 v9, 0x0

    .line 123
    invoke-static/range {v3 .. v11}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_5
    :goto_3
    iget-object v0, p1, Lrj7;->i:Lcom/opay/team/newhome/home/ImageLottieView;

    .line 128
    .line 129
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 133
    .line 134
    .line 135
    :goto_4
    iget-object v0, p1, Lrj7;->h:Landroid/widget/TextView;

    .line 136
    .line 137
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/PaymentResultShowContent;->c()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-static {v2}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/PaymentResultShowContent;->b()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    const-string v2, "COPY"

    .line 153
    .line 154
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    const-string v3, "tvValue"

    .line 159
    .line 160
    const-string v4, "btnEnd"

    .line 161
    .line 162
    if-eqz v2, :cond_6

    .line 163
    .line 164
    iget-object v0, p1, Lrj7;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 165
    .line 166
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p1, Lrj7;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 173
    .line 174
    sget v1, Lteam/opay/pay/R$mipmap;->osdk_svg_copy_white:I

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p1, Lrj7;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 180
    .line 181
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    new-instance v1, Lkhb;

    .line 185
    .line 186
    invoke-direct {v1, p0, p2}, Lkhb;-><init>(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;Lteam/opay/pay/cashier/result/PaymentResultShowContent;)V

    .line 187
    .line 188
    .line 189
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p1, Lrj7;->h:Landroid/widget/TextView;

    .line 193
    .line 194
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    new-instance v1, Llhb;

    .line 198
    .line 199
    invoke-direct {v1, p0, p2}, Llhb;-><init>(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;Lteam/opay/pay/cashier/result/PaymentResultShowContent;)V

    .line 200
    .line 201
    .line 202
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 203
    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_6
    const-string v2, "JUMP"

    .line 207
    .line 208
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_7

    .line 213
    .line 214
    iget-object v0, p1, Lrj7;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 215
    .line 216
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 220
    .line 221
    .line 222
    iget-object v0, p1, Lrj7;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 223
    .line 224
    sget v1, Lteam/opay/pay/R$mipmap;->osdk_kyc_arrow_right_gray:I

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 227
    .line 228
    .line 229
    iget-object v0, p1, Lrj7;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 230
    .line 231
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    new-instance v1, Lmhb;

    .line 235
    .line 236
    invoke-direct {v1, p0, p2}, Lmhb;-><init>(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;Lteam/opay/pay/cashier/result/PaymentResultShowContent;)V

    .line 237
    .line 238
    .line 239
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 240
    .line 241
    .line 242
    iget-object v0, p1, Lrj7;->h:Landroid/widget/TextView;

    .line 243
    .line 244
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    new-instance v1, Lnhb;

    .line 248
    .line 249
    invoke-direct {v1, p0, p2}, Lnhb;-><init>(Lteam/opay/pay/cashier/result/PaymentSuccessResultAdapter;Lteam/opay/pay/cashier/result/PaymentResultShowContent;)V

    .line 250
    .line 251
    .line 252
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 253
    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_7
    iget-object v0, p1, Lrj7;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 257
    .line 258
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 262
    .line 263
    .line 264
    iget-object v0, p1, Lrj7;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 265
    .line 266
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    .line 268
    .line 269
    iget-object v0, p1, Lrj7;->h:Landroid/widget/TextView;

    .line 270
    .line 271
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    .line 273
    .line 274
    :goto_5
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/PaymentResultShowContent;->g()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    const-string v1, "tvOrderTips"

    .line 279
    .line 280
    const-string v2, "tipsUpArrow"

    .line 281
    .line 282
    if-eqz v0, :cond_a

    .line 283
    .line 284
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-nez v0, :cond_8

    .line 289
    .line 290
    goto :goto_6

    .line 291
    :cond_8
    iget-object v0, p1, Lrj7;->e:Landroid/view/View;

    .line 292
    .line 293
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 297
    .line 298
    .line 299
    iget-object v0, p1, Lrj7;->f:Landroid/widget/TextView;

    .line 300
    .line 301
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 305
    .line 306
    .line 307
    iget-object v0, p1, Lrj7;->f:Landroid/widget/TextView;

    .line 308
    .line 309
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/PaymentResultShowContent;->g()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-static {v1}, Lteam/opay/pay/util/HtmlCompat;->a(Ljava/lang/String;)Landroid/text/Spanned;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    .line 319
    .line 320
    sget-object v0, Lc03;->a:Lc03;

    .line 321
    .line 322
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/PaymentResultShowContent;->a()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p2

    .line 326
    if-nez p2, :cond_9

    .line 327
    .line 328
    const-string p2, ""

    .line 329
    .line 330
    :cond_9
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 331
    .line 332
    sget v2, Lteam/opay/pay/R$color;->osdk_ECFAF5:I

    .line 333
    .line 334
    invoke-static {v1, v2}, Lzq2;->getColor(Landroid/content/Context;I)I

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    invoke-virtual {v0, p2, v1}, Lc03;->e(Ljava/lang/String;Ljava/lang/Integer;)I

    .line 343
    .line 344
    .line 345
    move-result p2

    .line 346
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 347
    .line 348
    .line 349
    move-result-object p2

    .line 350
    const-string v0, "valueOf(...)"

    .line 351
    .line 352
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    iget-object v0, p1, Lrj7;->f:Landroid/widget/TextView;

    .line 356
    .line 357
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 358
    .line 359
    .line 360
    iget-object p1, p1, Lrj7;->e:Landroid/view/View;

    .line 361
    .line 362
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 363
    .line 364
    .line 365
    goto :goto_7

    .line 366
    :cond_a
    :goto_6
    iget-object p2, p1, Lrj7;->e:Landroid/view/View;

    .line 367
    .line 368
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-static {p2}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 372
    .line 373
    .line 374
    iget-object p1, p1, Lrj7;->f:Landroid/widget/TextView;

    .line 375
    .line 376
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-static {p1}, Lteam/opay/core/android/ViewKt;->e(Landroid/view/View;)V

    .line 380
    .line 381
    .line 382
    :goto_7
    return-void
.end method
