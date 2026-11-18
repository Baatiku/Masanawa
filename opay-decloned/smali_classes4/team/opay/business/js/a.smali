.class public final synthetic Lteam/opay/business/js/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AppCompatActivity;

.field public final synthetic b:Lteam/opay/business/js/BusinessWebDelegate;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lteam/opay/business/js/BusinessWebDelegate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/business/js/a;->a:Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lteam/opay/business/js/a;->b:Lteam/opay/business/js/BusinessWebDelegate;

    .line 7
    .line 8
    iput-object p3, p0, Lteam/opay/business/js/a;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lteam/opay/business/js/a;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lteam/opay/business/js/a;->a:Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/js/a;->b:Lteam/opay/business/js/BusinessWebDelegate;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/business/js/a;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/business/js/a;->d:Ljava/lang/String;

    .line 8
    .line 9
    check-cast p1, Lteam/opay/core/http/arch/Resource;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, p1}, Lteam/opay/business/js/BusinessWebDelegate$handleFileResult$2;->c(Landroidx/appcompat/app/AppCompatActivity;Lteam/opay/business/js/BusinessWebDelegate;Ljava/lang/String;Ljava/lang/String;Lteam/opay/core/http/arch/Resource;)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
