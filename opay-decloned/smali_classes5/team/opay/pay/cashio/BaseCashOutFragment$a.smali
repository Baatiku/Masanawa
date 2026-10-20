.class public final Lteam/opay/pay/cashio/BaseCashOutFragment$a;
.super Ljava/lang/Object;
.source "BaseCashOutFragment.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/cashio/BaseCashOutFragment;->J0()V
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
.field public final synthetic a:Lteam/opay/pay/cashio/BaseCashOutFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/cashio/BaseCashOutFragment<",
            "TVB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/pay/cashio/BaseCashOutFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/cashio/BaseCashOutFragment<",
            "TVB;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/cashio/BaseCashOutFragment$a;->a:Lteam/opay/pay/cashio/BaseCashOutFragment;

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
    iget-object p1, p0, Lteam/opay/pay/cashio/BaseCashOutFragment$a;->a:Lteam/opay/pay/cashio/BaseCashOutFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lteam/opay/pay/cashio/BaseCashOutFragment;->a0(Lteam/opay/pay/cashio/BaseCashOutFragment;)Lteam/opay/pay/android/views/KeyboardEditText;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lli2;->h(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lpf5;->b(Landroid/widget/EditText;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 20
    .line 21
    .line 22
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1
.end method
