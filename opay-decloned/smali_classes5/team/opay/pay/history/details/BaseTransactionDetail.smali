.class public Lteam/opay/pay/history/details/BaseTransactionDetail;
.super Ljava/lang/Object;
.source "TransactionDetail.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/history/details/BaseTransactionDetail$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/pay/history/details/BaseTransactionDetail;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "itemType",
        "",
        "getItemType",
        "()I",
        "setItemType",
        "(I)V",
        "hasPending",
        "",
        "getHasPending",
        "()Z",
        "setHasPending",
        "(Z)V",
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
.field public static final AD_INFOS:I = 0x11

.field public static final BANK_PROGRESS:I = 0x8

.field public static final BODY:I = 0x5

.field public static final BODY_TYPE:I = 0xd

.field public static final CATEGORY_TYPE:I = 0xf

.field public static final CHOOSE_CATEGORY:I = 0x7

.field public static final COST_REDUCTION:I = 0x10

.field public static final Companion:Lteam/opay/pay/history/details/BaseTransactionDetail$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DATE:I = 0x3

.field public static final DEFAULT:I = 0x1

.field public static final FAQ_TYPE:I = 0xe

.field public static final FEEDBACK:I = 0x6

.field public static final HEAD_TYPE:I = 0xc

.field public static final LINE:I = 0x4

.field public static final MORE_ACTION:I = 0x12

.field public static final PATTERNED_BOTTOM:I = 0xb

.field public static final PATTERNED_TOP:I = 0xa

.field public static final PROGRESS_TIP:I = 0x9

.field public static final TITLE:I = 0x2


# instance fields
.field private hasPending:Z

.field private itemType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/history/details/BaseTransactionDetail$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/history/details/BaseTransactionDetail$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/history/details/BaseTransactionDetail;->Companion:Lteam/opay/pay/history/details/BaseTransactionDetail$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lteam/opay/pay/history/details/BaseTransactionDetail;->itemType:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final getHasPending()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/history/details/BaseTransactionDetail;->hasPending:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getItemType()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/pay/history/details/BaseTransactionDetail;->itemType:I

    .line 2
    .line 3
    return v0
.end method

.method public final setHasPending(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/history/details/BaseTransactionDetail;->hasPending:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setItemType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/pay/history/details/BaseTransactionDetail;->itemType:I

    .line 2
    .line 3
    return-void
.end method
