.class public final synthetic Lteam/opay/sme/va/v2/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lteam/opay/sme/va/v2/MyBusinessFragment;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lteam/opay/sme/va/v2/MyBusinessFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/sme/va/v2/c;->a:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 5
    .line 6
    iput-boolean p2, p0, Lteam/opay/sme/va/v2/c;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/sme/va/v2/c;->a:Lteam/opay/sme/va/v2/MyBusinessFragment;

    .line 2
    .line 3
    iget-boolean v1, p0, Lteam/opay/sme/va/v2/c;->b:Z

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {v0, v1, p1}, Lteam/opay/sme/va/v2/MyBusinessFragment$showThirdGuide$1;->c(Lteam/opay/sme/va/v2/MyBusinessFragment;ZZ)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
