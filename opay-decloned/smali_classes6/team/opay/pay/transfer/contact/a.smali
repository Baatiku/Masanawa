.class public final synthetic Lteam/opay/pay/transfer/contact/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lvfa;


# instance fields
.field public final synthetic a:Lteam/opay/pay/transfer/contact/TransferContactViewModel;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/pay/transfer/contact/a;->a:Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/pay/transfer/contact/a;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 7
    .line 8
    iput-object p3, p0, Lteam/opay/pay/transfer/contact/a;->c:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transfer/contact/a;->a:Lteam/opay/pay/transfer/contact/TransferContactViewModel;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/pay/transfer/contact/a;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/pay/transfer/contact/a;->c:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    check-cast p1, Ljava/util/List;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Lteam/opay/pay/transfer/contact/TransferContactViewModel$getSupportNumbers$1;->c(Lteam/opay/pay/transfer/contact/TransferContactViewModel;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
