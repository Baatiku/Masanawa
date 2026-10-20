.class public final Lcom/opay/team/newhome/me/MeHeadLoginFragment$a;
.super Ljava/lang/Object;
.source "MeHeadLoginFragment.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/team/newhome/me/MeHeadLoginFragment;->flowBusEvent()V
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
.field public final synthetic a:Lcom/opay/team/newhome/me/MeHeadLoginFragment;


# direct methods
.method public constructor <init>(Lcom/opay/team/newhome/me/MeHeadLoginFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/team/newhome/me/MeHeadLoginFragment$a;->a:Lcom/opay/team/newhome/me/MeHeadLoginFragment;

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
    iget-object p1, p0, Lcom/opay/team/newhome/me/MeHeadLoginFragment$a;->a:Lcom/opay/team/newhome/me/MeHeadLoginFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/opay/team/newhome/me/MeHeadLoginFragment;->f0(Lcom/opay/team/newhome/me/MeHeadLoginFragment;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/opay/team/newhome/me/MeHeadLoginFragment$a;->a:Lcom/opay/team/newhome/me/MeHeadLoginFragment;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/opay/team/newhome/me/MeHeadLoginFragment;->e0(Lcom/opay/team/newhome/me/MeHeadLoginFragment;)Lcom/opay/team/newhome/viewmodel/MeViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p2}, Lcom/opay/team/newhome/viewmodel/MeViewModel;->F()Lteam/opay/core/api/graphql/HomeBalance;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-static {p1, p2}, Lcom/opay/team/newhome/me/MeHeadLoginFragment;->d0(Lcom/opay/team/newhome/me/MeHeadLoginFragment;Lteam/opay/core/api/graphql/HomeBalance;)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p1
.end method
