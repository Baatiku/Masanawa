.class public final synthetic Lcom/opay/team/newhome/viewmodel/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/opay/team/newhome/viewmodel/d;->a:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/opay/team/newhome/viewmodel/d;->b:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/opay/team/newhome/viewmodel/d;->a:Lcom/opay/team/newhome/viewmodel/NewPayViewModel;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/opay/team/newhome/viewmodel/d;->b:Landroid/content/Context;

    .line 4
    .line 5
    check-cast p1, Lteam/opay/core/android/arch/Resource;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lcom/opay/team/newhome/viewmodel/NewPayViewModel$fetchNewPayData$1$1;->c(Lcom/opay/team/newhome/viewmodel/NewPayViewModel;Landroid/content/Context;Lteam/opay/core/android/arch/Resource;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
