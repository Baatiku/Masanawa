.class public final Lteam/opay/pay/opay/PaymentViewModel$b;
.super Ljava/lang/Object;
.source "PaymentViewModel.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/opay/PaymentViewModel;->I(Landroid/widget/EditText;Lag8;)V
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


# instance fields
.field public final synthetic a:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/pay/opay/PaymentViewModel$b;->a:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lteam/opay/pay/opay/PaymentViewModel$b;->a:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-static {p1}, Lkmf;->L(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/pay/opay/PaymentViewModel$b;->a:Landroid/widget/EditText;

    .line 7
    .line 8
    invoke-static {p1}, Lpf5;->b(Landroid/widget/EditText;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p1
.end method
