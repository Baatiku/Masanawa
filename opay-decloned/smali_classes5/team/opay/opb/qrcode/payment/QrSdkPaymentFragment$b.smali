.class public final Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$b;
.super Ljava/lang/Object;
.source "QrSdkPaymentFragment.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La66;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$b;->a:Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$b;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final c(Lteam/opay/swarmfoundation/utils/PaymentMessage;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/swarmfoundation/utils/PaymentMessage;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/swarmfoundation/utils/PaymentMessage;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/opb/qrcode/payment/QrSdkPaymentFragment$b;->c(Lteam/opay/swarmfoundation/utils/PaymentMessage;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
