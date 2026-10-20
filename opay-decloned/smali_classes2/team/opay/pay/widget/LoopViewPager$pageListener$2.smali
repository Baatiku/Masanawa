.class final Lteam/opay/pay/widget/LoopViewPager$pageListener$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LoopViewPager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/widget/LoopViewPager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lteam/opay/pay/widget/LoopViewPager$pageListener$2$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\t\n\u0000\n\u0002\u0008\u0004*\u0001\u0001\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\u0008\u0000\u0010\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "T",
        "team/opay/pay/widget/LoopViewPager$pageListener$2$a",
        "invoke",
        "()Lteam/opay/pay/widget/LoopViewPager$pageListener$2$a;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lteam/opay/pay/widget/LoopViewPager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/pay/widget/LoopViewPager<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lteam/opay/pay/widget/LoopViewPager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/widget/LoopViewPager<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/widget/LoopViewPager$pageListener$2;->this$0:Lteam/opay/pay/widget/LoopViewPager;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/widget/LoopViewPager$pageListener$2;->invoke()Lteam/opay/pay/widget/LoopViewPager$pageListener$2$a;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lteam/opay/pay/widget/LoopViewPager$pageListener$2$a;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lteam/opay/pay/widget/LoopViewPager$pageListener$2$a;

    iget-object v1, p0, Lteam/opay/pay/widget/LoopViewPager$pageListener$2;->this$0:Lteam/opay/pay/widget/LoopViewPager;

    invoke-direct {v0, v1}, Lteam/opay/pay/widget/LoopViewPager$pageListener$2$a;-><init>(Lteam/opay/pay/widget/LoopViewPager;)V

    return-object v0
.end method
