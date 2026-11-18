.class public final Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$b$a;
.super Ljava/lang/Object;
.source "HomeAdDialogTask.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$b;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lteam/opay/odialog/net/AdDataItem;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
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
.field public final synthetic a:Lteam/opay/pay/home/dialog/HomeAdDialogTask;

.field public final synthetic b:Lzv1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzv1<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Lzr2;


# direct methods
.method public constructor <init>(Lteam/opay/pay/home/dialog/HomeAdDialogTask;Lzv1;Lzr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/home/dialog/HomeAdDialogTask;",
            "Lzv1<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Lzr2;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$b$a;->a:Lteam/opay/pay/home/dialog/HomeAdDialogTask;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$b$a;->b:Lzv1;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$b$a;->c:Lzr2;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/odialog/net/AdDataItem;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$b$a;->a:Lteam/opay/pay/home/dialog/HomeAdDialogTask;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->t(Lteam/opay/pay/home/dialog/HomeAdDialogTask;Lteam/opay/odialog/net/AdDataItem;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$b$a;->a:Lteam/opay/pay/home/dialog/HomeAdDialogTask;

    .line 7
    .line 8
    invoke-static {p1, p2}, Lteam/opay/pay/home/dialog/HomeAdDialogTask;->s(Lteam/opay/pay/home/dialog/HomeAdDialogTask;I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$b$a;->a:Lteam/opay/pay/home/dialog/HomeAdDialogTask;

    .line 12
    .line 13
    iget-object p2, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$b$a;->b:Lzv1;

    .line 14
    .line 15
    iget-object v0, p0, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$b$a;->c:Lzr2;

    .line 16
    .line 17
    invoke-virtual {p1, p2, v0}, Lteam/opay/pay/home/dialog/HomeDialogTask;->i(Ljr2;Lzr2;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lteam/opay/odialog/net/AdDataItem;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p0, p1, p2}, Lteam/opay/pay/home/dialog/HomeAdDialogTask$getDialogTask$1$b$a;->a(Lteam/opay/odialog/net/AdDataItem;I)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p1
.end method
