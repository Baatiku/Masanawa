.class public final synthetic Lteam/opay/sme/va/v2/home/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;


# direct methods
.method public synthetic constructor <init>(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/sme/va/v2/home/b;->a:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/v2/home/b;->a:Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;

    .line 2
    .line 3
    check-cast p1, Landroid/animation/Animator;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2$startImageTransition$1;->c(Lteam/opay/sme/va/v2/home/MyBusinessFragmentV2;Landroid/animation/Animator;)Lkotlin/Unit;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
